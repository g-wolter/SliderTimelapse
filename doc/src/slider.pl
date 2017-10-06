# Requires the CPAN Module http://search.cpan.org/~mikem/Device-BCM2835-1.1/lib/Device/BCM2835.pm

use Device::BCM2835;
use strict;

Device::BCM2835::init() || die "Kann Library nicht initialisieren";

Device::BCM2835::gpio_fsel(&Device::BCM2835::RPI_GPIO_P1_18, &Device::BCM2835::BCM2835_GPIO_FSEL_OUTP);
Device::BCM2835::gpio_fsel(&Device::BCM2835::RPI_GPIO_P1_23, &Device::BCM2835::BCM2835_GPIO_FSEL_OUTP);
Device::BCM2835::gpio_fsel(&Device::BCM2835::RPI_GPIO_P1_24, &Device::BCM2835::BCM2835_GPIO_FSEL_OUTP);
Device::BCM2835::gpio_fsel(&Device::BCM2835::RPI_GPIO_P1_25, &Device::BCM2835::BCM2835_GPIO_FSEL_OUTP);

Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_18, 0);
Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_23, 0);
Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_24, 0);
Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_25, 0);

my $sleeptime = 500;

sub Step1 {

    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_25, 1);
    Device::BCM2835::delay($sleeptime);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_25, 0);

}

sub Step2 {

    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_25, 1);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_24, 1);
    Device::BCM2835::delay($sleeptime);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_25, 0);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_24, 0);

}

sub Step3 {

    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_24, 1);
    Device::BCM2835::delay($sleeptime);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_24, 0);

}

sub Step4 {

    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_23, 1);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_24, 1);
    Device::BCM2835::delay($sleeptime);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_23, 0);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_24, 0);

}

sub Step5 {

    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_23, 1);
    Device::BCM2835::delay($sleeptime);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_23, 0);

}

sub Step6 {

    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_18, 1);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_23, 1);
    Device::BCM2835::delay($sleeptime);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_18, 0);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_23, 0);

}

sub Step7 {

    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_18, 1);
    Device::BCM2835::delay($sleeptime);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_18, 0);

}

sub Step8 {

    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_25, 1);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_18, 1);
    Device::BCM2835::delay($sleeptime);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_25, 0);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_18, 0);

}

# Volle Umdrehung    
for (my $i=0; $i <= 512; $i++) {    

    Step1();
    Step2();
    Step3();
    Step4();
    Step5();
    Step6();
    Step7();
    Step8(); 
    print $i;

}
