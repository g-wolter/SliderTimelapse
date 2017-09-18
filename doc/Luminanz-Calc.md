# Luminanzberechnung

## Subroutine aus Timelapse-Deflicker
(Timelapse Deflicker)[https://github.com/cyberang3l/timelapse-deflicker]

```perl
sub luminance_det {
  my $progress    = Term::ProgressBar->new( { count => $max_entries } );

  for ( my $i = 0; $i < $max_entries; $i++ ) {
    verbose("Original luminance of Image $luminance{$i}{filename} is being processed...\n");
    
    #Create exifTool object for the image
    my $exifTool = new Image::ExifTool;
    my $exifinfo; #variable to hold info read from xmp file if present.

    #If there's already an xmp file for this filename, read it.
    if (-e $luminance{$i}{filename}.".xmp") { 
      $exifinfo = $exifTool->ImageInfo($luminance{$i}{filename}.".xmp");
      debug("Found xmp file: $luminance{$i}{filename}.xmp\n")
    }
    #Now, if it already has a luminance value, just use that:
    if ( length $$exifinfo{Luminance} ) {
      # Set it as the original and target value to start out with.
      $luminance{$i}{value} = $luminance{$i}{original} = $$exifinfo{Luminance};
      debug("Read luminance $$exifinfo{Luminance} from xmp file: $luminance{$i}{filename}.xmp\n")
    }
    else {
      #Create ImageMagick object for the image
      my $image = Image::Magick->new;
      #Evaluate the image using ImageMagick.
      $image->Read($luminance{$i}{filename});
      my @statistics = $image->Statistics();
      # Use the command "identify -verbose <some image file>" in order to see why $R, $G and $B
      # are read from the following index in the statistics array
      # This is the average R, G and B for the whole image.
      my $R          = @statistics[ ( RedPixelChannel * $statFieldsPerColChannel ) + statoffset_mean ];
      my $G          = @statistics[ ( GreenPixelChannel * $statFieldsPerColChannel ) + statoffset_mean ];
      my $B          = @statistics[ ( BluePixelChannel * $statFieldsPerColChannel ) + statoffset_mean ];

      # We use the following formula to get the perceived luminance.
      # Set it as the original and target value to start out with.
      $luminance{$i}{value} = $luminance{$i}{original} = 0.299 * $R + 0.587 * $G + 0.114 * $B;

      #Write luminance info to an xmp file.
      #This is the xmp for the input file, so it contains the original luminance.
      $exifTool->SetNewValue(luminance => $luminance{$i}{original}); 
      #If there is already an xmp file, just update it:
      if (-e $luminance{$i}{filename}.".xmp") { 
        $exifTool->WriteInfo($luminance{$i}{filename} . ".xmp")
      }
      #Otherwise, create a new one:
      else {
        $exifTool->WriteInfo(undef, $luminance{$i}{filename} . ".xmp", 'XMP'); #Write the XMP file
      }
    }
    $progress->update( $i + 1 );
  }
}
```
