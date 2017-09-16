#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"
#ifdef __cplusplus
}
#endif

#include "imext.h"
#include "imperl.h"

DEFINE_IMAGER_CALLBACKS;

/* ===================================== */
int
brightness(i_img *im) {
  int     x, y;
  i_color val;
  double  sum;
  int     br;
  int     avg;

  for(x = 0; x < im->xsize; x++) {
    for(y = 0; y < im->ysize; y++) {
      i_gpix(im, x, y, &val);
      br = (val.channel[0] + val.channel[1]
                     + val.channel[2]) / 3;
      sum += br;
    }
  }

  avg = sum / ((int) (im->xsize) * 
               (int) (im->ysize));
  return avg;
}

/* ===================================== */
int
changed(i_img *im1, i_img *im2, int diff) {
  int     x, y, z, chan;
  i_color val1, val2;
  int     diffcount = 0;

  for(x = 0; x < im1->xsize; x++) {
    for(y = 0; y < im1->ysize; y++) {

      i_gpix(im1, x, y, &val1);
      i_gpix(im2, x, y, &val2);

      for(z = 0; z < 3; z++) {
        if(abs(val1.channel[z] - 
               val2.channel[z]) > diff)
          diffcount++;
      }
    }
  }

  return diffcount;
}

/* ===================================== */
MODULE=Imager::Misc PACKAGE=Imager::Misc

PROTOTYPES: ENABLE

int
brightness(im)
        Imager::ImgRaw im

int
changed(im1, im2, diff)
        Imager::ImgRaw im1
        Imager::ImgRaw im2
        int diff

BOOT:
        PERL_INITIALIZE_IMAGER_CALLBACKS;
