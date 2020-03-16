#!/usr/bin/env bash

# shellcheck disable=SC2034

########################################################################################################################
#     CONSUL                                                                                                           #
########################################################################################################################

# released in 2014-04
#CONSUL_01X=("0.1.0")

# released in 2014-05
#CONSUL_02X=("0.2.0" "0.2.1")

# released between 2014-06 and 2014-07
#CONSUL_03X=("0.3.0" "0.3.1")

# released between 2014-09 and 2014-10
#CONSUL_04X=("0.4.0" "0.4.1")

# released between 2015-02 and 2015-05
#CONSUL_05X=("0.5.0" "0.5.1" "0.5.2")

# released between 2015-12 and 2016-03
#CONSUL_06X=("0.6.0" "0.6.1" "0.6.2" "0.6.3" "0.6.4")

# released between 2016-09 and 2017-02
#CONSUL_07X=("0.7.0" "0.7.1" "0.7.2" "0.7.3" "0.7.4" "0.7.5")

# released between 2017-04 and 2017-06
#CONSUL_08X=("0.8.0" "0.8.1" "0.8.2" "0.8.3" "0.8.4" "0.8.5")

# released between 2017-07 and 2018-11
#CONSUL_09X=("0.9.0-rc1" "0.9.0" "0.9.1" "0.9.2" "0.9.3-rc1" "0.9.3-rc2" "0.9.3" "0.9.4")

# released between 2017-10 and 2018-11
CONSUL_10X=("1.0.0-beta1" "1.0.0-beta2" "1.0.0" "1.0.1-rc1" "1.0.1" "1.0.2" "1.0.3" "1.0.5" "1.0.6" "1.0.7" "1.0.8")

# released between 2018-05 and 2018-11
CONSUL_11X=("1.1.0" "1.1.1")

# released between 2018-06 and 2018-11
CONSUL_12X=("1.2.0" "1.2.0+ent" "1.2.1+ent" "1.2.1" "1.2.2" "1.2.2+ent" "1.2.3+ent" "1.2.3" "1.2.4" "1.2.4+ent")

# released between 2018-10 and 2018-11
CONSUL_13X=("1.3.0" "1.3.0+ent" "1.3.1+ent" "1.3.1")

# released between 2018-11 and 2019-05
CONSUL_14X=("1.4.0-rc1" "1.4.0" "1.4.0+ent" "1.4.1" "1.4.1+ent" "1.4.2+ent" "1.4.2" "1.4.3" "1.4.3+ent" "1.4.4" "1.4.4+ent" "1.4.5+ent" "1.4.5")

# released between 2019-05 and 2019-07
CONSUL_15X=("1.5.0+ent" "1.5.0" "1.5.1" "1.5.1+ent" "1.5.2+ent" "1.5.2" "1.5.3" "1.5.3+ent")

# released between 2019-08 and 2020-02
CONSUL_16X=("1.6.0-beta1" "1.6.0-beta2" "1.6.0-beta3" "1.6.0-rc1" "1.6.0" "1.6.0+ent-rc1" "1.6.0+ent-beta3" "1.6.0+ent-beta1" "1.6.0+ent" "1.6.0+ent-beta2" "1.6.1+ent" "1.6.1" "1.6.2" "1.6.2+ent" "1.6.3+ent" "1.6.3" "1.6.4+ent" "1.6.4")

# released between 2020-02 and 2020-02
CONSUL_17X=("1.7.0-beta1" "1.7.0-beta2" "1.7.0-beta3" "1.7.0-beta4" "1.7.0" "1.7.0+ent-beta2" "1.7.0+ent-beta1" "1.7.0+ent-beta3" "1.7.0+ent" "1.7.0+ent-beta4" "1.7.1+ent" "1.7.1")

CONSUL_1XX=("${CONSUL_10X[@]}" "${CONSUL_11X[@]}" "${CONSUL_12X[@]}" "${CONSUL_13X[@]}" "${CONSUL_14X[@]}" "${CONSUL_15X[@]}" "${CONSUL_16X[@]}" "${CONSUL_17X[@]}")

########################################################################################################################
#     NOMAD                                                                                                            #
########################################################################################################################

# released between 2015-09 and 2015-10
#NOMAD_01X=("0.1.0" "0.1.1" "0.1.2")

# released between 2015-11 and 2015-12
#NOMAD_02X=("0.2.0" "0.2.1" "0.2.2" "0.2.3")

# released between 2016-03 and 2016-04
#NOMAD_03X=("0.3.0" "0.3.1" "0.3.2")

# released between 2016-06 and 2016-08
#NOMAD_04X=("0.4.0" "0.4.1")

# released between 2016-11 and 2017-03
#NOMAD_05X=("0.5.0" "0.5.1" "0.5.2" "0.5.3" "0.5.4" "0.5.5" "0.5.6")

# released between 2017-06 and 2017-09
#NOMAD_06X=("0.6.0-rc1" "0.6.0-rc2" "0.6.0" "0.6.1" "0.6.2" "0.6.3-rc1" "0.6.3")

# released between 2017-11 and 2017-12
#NOMAD_07X=("0.7.0-beta1" "0.7.0-rc1" "0.7.0-rc2" "0.7.0-rc3" "0.7.0" "0.7.1-rc1" "0.7.1")

# released between 2018-04 and 2019-01
NOMAD_08X=("0.8.0-rc1" "0.8.0" "0.8.1" "0.8.2" "0.8.3" "0.8.4-rc1" "0.8.4" "0.8.5" "0.8.6" "0.8.7-rc1" "0.8.7")

# released between 2019-04 and 2019-12
NOMAD_09X=("0.9.0-beta1" "0.9.0-beta2" "0.9.0-beta3" "0.9.0-rc1" "0.9.0-rc2" "0.9.0" "0.9.1-rc1" "0.9.1" "0.9.2-rc1" "0.9.2" "0.9.3" "0.9.4-rc1" "0.9.4" "0.9.5" "0.9.6" "0.9.7")

# released between 2019-10 and 2020-02
# `nomad-0.10.0-connect1` was not released on macOS and is therefore omitted
NOMAD_010X=("0.10.0-beta1" "0.10.0-rc1" "0.10.0" "0.10.1" "0.10.2-rc1" "0.10.2" "0.10.3" "0.10.4-rc1" "0.10.4")

NOMAD_0XX=("${NOMAD_08X[@]}" "${NOMAD_09X[@]}" "${NOMAD_010X[@]}")

# shorthands for Nomad versions with and without prefix in checksums file
NOMAD_PREFIXED=("${NOMAD_08X[@]}" "${NOMAD_09X[@]}" "0.10.0-beta1" "0.10.0-rc1" "0.10.0" "0.10.1" "0.10.2-rc1" "0.10.2")
NOMAD_NONPREFIXED=("0.10.3" "0.10.4-rc1" "0.10.4")

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
