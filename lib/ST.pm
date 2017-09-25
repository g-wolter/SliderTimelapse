use strict;
use warnings;
use 5.010;

package ST;

use UNIVERSAL::require;

use vars qw(
  $BasePath
  $BinPath
  $LibDir
 );

sub InitClasses {
    shift if @_%2; # so we can call it as a function or method
    my %args = (@_);
    require ST::Analyze;
    require ST::Calc;
    require ST::Control;
    require ST::Float;
    require ST::Luminanz;
    require ST::Slide;
}
