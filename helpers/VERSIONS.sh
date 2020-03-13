#!/usr/bin/env bash

# shellcheck disable=SC2034

########################################################################################################################
#     VAGRANT                                                                                                          #
########################################################################################################################

# released between 2013-12 and 2014-01
#VAGRANT_14X=("1.4.0" "1.4.0" "1.4.1" "1.4.2" "1.4.3")

# released between 2014-03 and 2014-04
#VAGRANT_15X=("1.5.0" "1.5.1" "1.5.2" "1.5.3" "1.5.4")

# released between 2014-05 and 2014-09
#VAGRANT_16X=("1.6.0" "1.6.1" "1.6.2" "1.6.3" "1.6.4" "1.6.5")

# released between 2014-12 and 2015-07
#VAGRANT_17X=("1.7.0" "1.7.1" "1.7.2" "1.7.3" "1.7.4")

# released between 2015-12 and 2016-11
VAGRANT_18X=("1.8.0" "1.8.1" "1.8.3" "1.8.4" "1.8.5" "1.8.6" "1.8.7")

# released between 2016-11 and 2017-08
VAGRANT_19X_32BIT=("1.9.0" "1.9.1" "1.9.2")
VAGRANT_19X_64BIT=("1.9.3" "1.9.4" "1.9.5" "1.9.6" "1.9.7" "1.9.8")

VAGRANT_1XX=("${VAGRANT_18X[@]}" "${VAGRANT_19X_32BIT[@]}" "${VAGRANT_19X_64BIT[@]}")

VAGRANT_20X=("2.0.0" "2.0.1" "2.0.2" "2.0.3" "2.0.4")                         # released between 2017-09 and 2018-04
VAGRANT_21X=("2.1.0" "2.1.1" "2.1.2" "2.1.3" "2.1.4" "2.1.5")                 # released between 2018-05 and 2018-09
VAGRANT_22X=("2.2.0" "2.2.1" "2.2.2" "2.2.3" "2.2.4" "2.2.5" "2.2.6" "2.2.7") # released between 2018-10 and 2020-01

VAGRANT_2XX=("${VAGRANT_20X[@]}" "${VAGRANT_21X[@]}" "${VAGRANT_22X[@]}")

# shorthands for 32-bit and 64-bit versions of Vagrant
VAGRANT_32BIT=("${VAGRANT_18X[@]}" "${VAGRANT_19X_32BIT[@]}")
VAGRANT_64BIT=("${VAGRANT_19X_64BIT[@]}" "${VAGRANT_2XX[@]}")
