#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';
package slider::slide;
use Data::Dumper;

# First Part from: http://search.cpan.org/~mikem/Device-BCM2835-1.0/lib/Device/BCM2835.pm
use Device::BCM2835;

# Library managment
Device::BCM2835::set_debug(1);
Device::BCM2835::init();

# Low level register access
Device::BCM2835::peri_read(&Device::BCM2835::BCM2835_GPIO_BASE + &Device::BCM2835::BCM2835_GPFSEL1);
Device::BCM2835::peri_write(&Device::BCM2835::BCM2835_GPIO_BASE + &Device::BCM2835::BCM2835_GPFSEL2, 0xdeadbeef)
Device::BCM2835::peri_set_bits(&Device::BCM2835::BCM2835_GPIO_BASE + &Device::BCM2835::BCM2835_GPFSEL3, 0xdeadbeef, 0x1f);

# GPIO register access
Device::BCM2835::gpio_fsel(&Device::BCM2835::RPI_GPIO_P1_11,&Device::BCM2835::BCM2835_GPIO_FSEL_OUTP);
Device::BCM2835::gpio_set(&Device::BCM2835::RPI_GPIO_P1_11);
Device::BCM2835::gpio_clr(&Device::BCM2835::RPI_GPIO_P1_11);
Device::BCM2835::gpio_lev(&Device::BCM2835::RPI_GPIO_P1_11);
Device::BCM2835::gpio_eds(&Device::BCM2835::RPI_GPIO_P1_11);
Device::BCM2835::gpio_set_eds(&Device::BCM2835::RPI_GPIO_P1_11);
Device::BCM2835::gpio_ren(&Device::BCM2835::RPI_GPIO_P1_11);
Device::BCM2835::gpio_fen(&Device::BCM2835::RPI_GPIO_P1_11);
Device::BCM2835::gpio_hen(&Device::BCM2835::RPI_GPIO_P1_11);
Device::BCM2835::gpio_len(&Device::BCM2835::RPI_GPIO_P1_11);
Device::BCM2835::gpio_aren(&Device::BCM2835::RPI_GPIO_P1_11);
Device::BCM2835::gpio_afen(&Device::BCM2835::RPI_GPIO_P1_11);
Device::BCM2835::gpio_pud(&Device::BCM2835::BCM2835_GPIO_PUD_OFF);
Device::BCM2835::gpio_pudclk(&Device::BCM2835::RPI_GPIO_P1_11, 1);
my $pad = Device::BCM2835::gpio_pad(&Device::BCM2835::BCM2835_PAD_GROUP_GPIO_0_27);
Device::BCM2835::gpio_set_pad(&Device::BCM2835::BCM2835_PAD_GROUP_GPIO_0_27,&Device::BCM2835::BCM2835_PAD_HYSTERESIS_ENABLED | &Device::BCM2835::BCM2835_PAD_DRIVE_10mA);

# High level and convenience functions
Device::BCM2835::delay(10);
Device::BCM2835::delayMicroseconds(10);
Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_11, 1);
Device::BCM2835::gpio_set_pud(&Device::BCM2835::RPI_GPIO_P1_11,&Device::BCM2835::BCM2835_GPIO_PUD_UP);
