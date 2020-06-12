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
CONSUL_12X=("1.2.0" "1.2.0+ent" "1.2.1" "1.2.1+ent" "1.2.2" "1.2.2+ent" "1.2.3" "1.2.3+ent" "1.2.4" "1.2.4+ent")

# released between 2018-10 and 2018-11
CONSUL_13X=("1.3.0" "1.3.0+ent" "1.3.1" "1.3.1+ent")

# released between 2018-11 and 2019-05
CONSUL_14X=("1.4.0-rc1" "1.4.0" "1.4.0+ent" "1.4.1" "1.4.1+ent" "1.4.2" "1.4.2+ent" "1.4.3" "1.4.3+ent" "1.4.4" "1.4.4+ent" "1.4.5" "1.4.5+ent")

# released between 2019-05 and 2019-07
CONSUL_15X=("1.5.0+ent" "1.5.0" "1.5.1" "1.5.1+ent" "1.5.2" "1.5.2+ent" "1.5.3" "1.5.3+ent")

# released between 2019-08 and 2020-04
CONSUL_16X=("1.6.0-beta1" "1.6.0-beta2" "1.6.0-beta3" "1.6.0-rc1" "1.6.0" "1.6.0+ent-rc1" "1.6.0+ent-beta3" "1.6.0+ent-beta1" "1.6.0+ent" "1.6.0+ent-beta2" "1.6.1" "1.6.1+ent" "1.6.2" "1.6.2+ent" "1.6.3" "1.6.3+ent" "1.6.4" "1.6.4+ent" "1.6.5" "1.6.5+ent" "1.6.6" "1.6.6+ent")

# released between 2020-02 and 2020-05
CONSUL_17X=("1.7.0-beta1" "1.7.0-beta2" "1.7.0-beta3" "1.7.0-beta4" "1.7.0" "1.7.0+ent-beta2" "1.7.0+ent-beta1" "1.7.0+ent-beta3" "1.7.0+ent" "1.7.0+ent-beta4" "1.7.1" "1.7.1+ent" "1.7.2" "1.7.2+ent" "1.7.3" "1.7.3+ent" "1.7.4" "1.7.4+ent")

# released between 2020-05 and
CONSUL_18X=("1.8.0-beta1" "1.8.0+ent-beta1" "1.8.0-beta2" "1.8.0+ent-beta2")

CONSUL_1XX=("${CONSUL_10X[@]}" "${CONSUL_11X[@]}" "${CONSUL_12X[@]}" "${CONSUL_13X[@]}" "${CONSUL_14X[@]}" "${CONSUL_15X[@]}" "${CONSUL_16X[@]}" "${CONSUL_17X[@]}" "${CONSUL_18X[@]}")

########################################################################################################################
#     CONSUL-AWS                                                                                                       #
########################################################################################################################

# released between 2018-11 and 2020-04
CONSUL_AWS_01X=("0.1.0" "0.1.1" "0.1.2")

CONSUL_AWS_0XX=("${CONSUL_AWS_01X[@]}")

########################################################################################################################
#     CONSUL-TEMPLATE                                                                                                  #
########################################################################################################################

# released between 2017-01 and 2017-05
CONSUL_TEMPLATE_018X=("0.18.0" "0.18.1" "0.18.2" "0.18.3" "0.18.4" "0.18.5")

# released between 2017-06 and 2018-06
CONSUL_TEMPLATE_019X=("0.19.0" "0.19.1" "0.19.2" "0.19.3" "0.19.4" "0.19.5")

# released between 2019-02 and 2019-07
CONSUL_TEMPLATE_020X=("0.20.0" "0.20.1")

# released between 2019-09 and 2019-09
CONSUL_TEMPLATE_021X=("0.21.0" "0.21.1" "0.21.2" "0.21.3")

# released between 2019-10 and 2019-11
CONSUL_TEMPLATE_022X=("0.22.0" "0.22.1")

# released in 2019-11
CONSUL_TEMPLATE_023X=("0.23.0")

# released in 2020-01
CONSUL_TEMPLATE_024X=("0.24.0" "0.24.1")

# released in 2020-04
CONSUL_TEMPLATE_025X=("0.25.0")

CONSUL_TEMPLATE_0XX=("${CONSUL_TEMPLATE_018X[@]}" "${CONSUL_TEMPLATE_019X[@]}" "${CONSUL_TEMPLATE_020X[@]}" "${CONSUL_TEMPLATE_021X[@]}" "${CONSUL_TEMPLATE_022X[@]}" "${CONSUL_TEMPLATE_023X[@]}" "${CONSUL_TEMPLATE_024X[@]}" "${CONSUL_TEMPLATE_025X[@]}")

########################################################################################################################
#     ENVCONSUL                                                                                                        #
########################################################################################################################

# released in 2014-05
ENVCONSUL_01X=("0.1.0")

# released in 2014-07
ENVCONSUL_02X=("0.2.0")

# released in 2014-11
ENVCONSUL_03X=("0.3.0")

# released in 2015-02
ENVCONSUL_04X=("0.4.1")

# released in 2015-02
ENVCONSUL_05X=("0.5.0")

# released between 2015-10 and 2017-01
ENVCONSUL_06X=("0.6.0" "0.6.1" "0.6.2")

# released between 2017-08 and 2018-01
ENVCONSUL_07X=("0.7.0" "0.7.1" "0.7.2" "0.7.3")

# released in 2019-06
ENVCONSUL_08X=("0.8.0")

# released between 2019-08 and 2020-01
ENVCONSUL_09X=("0.9.0" "0.9.1" "0.9.2")

ENVCONSUL_0XX=("${ENVCONSUL_01X[@]}" "${ENVCONSUL_02X[@]}" "${ENVCONSUL_03X[@]}" "${ENVCONSUL_04X[@]}" "${ENVCONSUL_05X[@]}" "${ENVCONSUL_06X[@]}" "${ENVCONSUL_07X[@]}" "${ENVCONSUL_08X[@]}" "${ENVCONSUL_09X[@]}")

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

# released between 2019-10 and 2020-03
# version `0.10.0-connect1` was not released for macOS and is therefore omitted
NOMAD_010X_PREFIXED=("0.10.0-beta1" "0.10.0-rc1" "0.10.0" "0.10.1" "0.10.2-rc1" "0.10.2")
NOMAD_010X_NONPREFIXED=("0.10.3" "0.10.4-rc1" "0.10.4" "0.10.5")
NOMAD_010X=("${NOMAD_010X_PREFIXED[@]}" "${NOMAD_010X_NONPREFIXED[@]}")

# released between 2019-10 and 2020-05
NOMAD_011X=("0.11.0-beta1" "0.11.0-beta2" "0.11.0-rc1" "0.11.0" "0.11.1" "0.11.2" "0.11.3")

NOMAD_0XX=("${NOMAD_08X[@]}" "${NOMAD_09X[@]}" "${NOMAD_010X[@]}" "${NOMAD_011X[@]}")

# shorthands for Nomad versions with and without prefix in checksums file
NOMAD_PREFIXED=("${NOMAD_08X[@]}" "${NOMAD_09X[@]}" "${NOMAD_010X_PREFIXED[@]}")
NOMAD_NONPREFIXED=("${NOMAD_010X_NONPREFIXED[@]}" "${NOMAD_011X[@]}")

########################################################################################################################
#     NOMAD-AUTOSCALER                                                                                                 #
########################################################################################################################

# released in 2020-03
NOMAD_AUTOSCALER_00X=("0.0.1-techpreview1" "0.0.1-techpreview2" "0.0.2")

NOMAD_AUTOSCALER_0XX=("${NOMAD_AUTOSCALER_00X[@]}")

########################################################################################################################
#     PACKER                                                                                                           #
########################################################################################################################

# released between 2013-06 and 2013-07
#PACKER_01X=("0.1.0" "0.1.1" "0.1.2" "0.1.3" "0.1.4" "0.1.5")

# released between 2013-07 and 2013-08
#PACKER_02X=("0.2.0""0.2.1""0.2.2""0.2.3")

# released between 2013-08 and 2013-11
#PACKER_03X=("0.3.0" "0.3.1" "0.3.2" "0.3.3" "0.3.4" "0.3.5" "0.3.6" "0.3.7" "0.3.8" "0.3.9" "0.3.10" "0.3.11")

# released between 2013-11 and 2013-12
#PACKER_04X=("0.4.0" "0.4.1")

# released between 2013-12 and 2014-02
#PACKER_05X=("0.5.0" "0.5.1" "0.5.2")

# released between 2014-05 and 2014-07
#PACKER_06X=("0.6.0" "0.6.1")

# released between 2014-09 and 2014-12
#PACKER_07X=("0.7.0" "0.7.1" "0.7.2" "0.7.5")

# released between 2015-06 and 2015-08
#PACKER_08X=("0.8.0" "0.8.1" "0.8.2" "0.8.3" "0.8.5" "0.8.6")

# released in 2016-02
#PACKER_09X=("0.9.0")

# released between 2016-03 and 2016-09
#PACKER_01X=("0.10.0" "0.10.1" "0.10.2")

# released in 2016-10
#PACKER_01X=("0.11.0")

# released between 2016-11 and 2017-03
#PACKER_01X=("0.12.0" "0.12.1" "0.12.2" "0.12.3")

# released between 2017-04 and 2017-08
PACKER_10X=("1.0.0" "1.0.1" "1.0.2" "1.0.3" "1.0.4")

# released between 2017-09 and 2017-12
PACKER_11X=("1.1.0" "1.1.1" "1.1.2" "1.1.3")

# released between 2018-02 and 2018-05
PACKER_12X=("1.2.0" "1.2.1" "1.2.2" "1.2.3" "1.2.4" "1.2.5")

# released between 2018-09 and 2019-02
PACKER_13X=("1.3.0" "1.3.1" "1.3.2" "1.3.3" "1.3.4" "1.3.5")

# released between 2019-04 and 2019-10
PACKER_14X=("1.4.0" "1.4.1" "1.4.2" "1.4.3" "1.4.4" "1.4.5")

# released between 2019-12 and 2020-02
PACKER_15X=("1.5.0" "1.5.1" "1.5.2" "1.5.3" "1.5.4" "1.5.5")

# released between 2020-06 and
PACKER_16X=("1.6.0")

PACKER_1XX=("${PACKER_10X[@]}" "${PACKER_11X[@]}" "${PACKER_12X[@]}" "${PACKER_13X[@]}" "${PACKER_14X[@]}" "${PACKER_15X[@]}" "${PACKER_16X[@]}")

########################################################################################################################
#     SENTINEL                                                                                                         #
########################################################################################################################

# released between 2019-04 and 2019-08
SENTINEL_010X=("0.10.0" "0.10.1" "0.10.2" "0.10.3" "0.10.4")

# released in 2019-09
SENTINEL_011X=("0.11.0")

# released in 2019-10
SENTINEL_012X=("0.12.0")

# released in 2019-11
SENTINEL_013X=("0.13.0" "0.13.1")

# released between 2019-12 and 2020-02
SENTINEL_014X=("0.14.0" "0.14.1" "0.14.2" "0.14.3" "0.14.4")

# released between 2020-03 and 2020-05
SENTINEL_015X=("0.15.0" "0.15.1" "0.15.2" "0.15.3" "0.15.4" "0.15.5")

SENTINEL_0XX=("${SENTINEL_010X[@]}" "${SENTINEL_011X[@]}" "${SENTINEL_012X[@]}" "${SENTINEL_013X[@]}" "${SENTINEL_014X[@]}" "${SENTINEL_015X[@]}")

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

# released between 2017-09 and 2018-04
VAGRANT_20X=("2.0.0" "2.0.1" "2.0.2" "2.0.3" "2.0.4")

# released between 2018-05 and 2018-09
VAGRANT_21X=("2.1.0" "2.1.1" "2.1.2" "2.1.3" "2.1.4" "2.1.5")

# released between 2018-10 and 2020-05
VAGRANT_22X=("2.2.0" "2.2.1" "2.2.2" "2.2.3" "2.2.4" "2.2.5" "2.2.6" "2.2.7" "2.2.8" "2.2.9")

VAGRANT_2XX=("${VAGRANT_20X[@]}" "${VAGRANT_21X[@]}" "${VAGRANT_22X[@]}")

# shorthands for 32-bit and 64-bit versions of Vagrant
VAGRANT_32BIT=("${VAGRANT_18X[@]}" "${VAGRANT_19X_32BIT[@]}")
VAGRANT_64BIT=("${VAGRANT_19X_64BIT[@]}" "${VAGRANT_2XX[@]}")

########################################################################################################################
#     VAULT                                                                                                            #
########################################################################################################################

# released between 2017-03 and 2017-06
VAULT_07X=("0.7.0" "0.7.1" "0.7.2" "0.7.3")

# released between 2017-08 and 2017-09
VAULT_08X=("0.8.0" "0.8.0-beta1" "0.8.0-rc1" "0.8.1" "0.8.2" "0.8.3")

# released between 2017-11 and 2018-03
VAULT_09X=("0.9.0" "0.9.1" "0.9.2" "0.9.3" "0.9.4" "0.9.5" "0.9.6")

# released between 2018-04 and 2018-07
VAULT_010X=("0.10.0" "0.10.0-beta1" "0.10.0-rc1" "0.10.1" "0.10.2" "0.10.3" "0.10.4")

# released between 2018-08 and 2018-12
VAULT_011X=("0.11.0" "0.11.0-beta1" "0.11.1" "0.11.2" "0.11.3" "0.11.4" "0.11.5" "0.11.6")

# released between 2018-12 and 2019-02
VAULT_10X=("1.0.0" "1.0.0-beta1" "1.0.0-beta2" "1.0.0-rc1" "1.0.1" "1.0.2" "1.0.3")

# released between 2019-03 and 2019-07
VAULT_11X=("1.1.0" "1.1.0-beta1" "1.1.0-beta2" "1.1.1" "1.1.2" "1.1.3" "1.1.4" "1.1.5")

# released between 2019-07 and 2019-11
# versions `1.2.3+ent.hsm` and `1.2.4+ent.hsm` were not released for macOS and are therefore omitted
VAULT_12X_NONPREFIXED=("1.2.0" "1.2.0-beta1" "1.2.0-beta2" "1.2.0-rc1" "1.2.1" "1.2.2" "1.2.3" "1.2.4" "1.2.4+ent")
VAULT_12X_PREFIXED=("1.2.3+ent")
VAULT_12X=("${VAULT_12X_NONPREFIXED[@]}" "${VAULT_12X_PREFIXED[@]}")

# released between 2019-11 and 2020-03
# versions `1.3.0-beta1+ent.hsm`, `1.3.0+ent.hsm`, `1.3.1+ent.hsm`, `1.3.2+ent.hsm`, `1.3.3+ent.hsm`, and `1.3.4+ent.hsm` were not released for macOS and are therefore omitted
VAULT_13X=("1.3.0" "1.3.0-beta1" "1.3.0-beta1+ent" "1.3.0+ent" "1.3.1" "1.3.1+ent" "1.3.2" "1.3.2+ent" "1.3.3" "1.3.3+ent" "1.3.4" "1.3.4+ent" "1.3.5" "1.3.4+ent")

# released between 2020-02 and 2020-04
# versions `1.4.0-beta1+ent.hsm` and `1.4.0-rc1+ent.hsm` were not released for macOS and are therefore omitted
VAULT_14X=("1.4.0-beta1" "1.4.0-beta1+ent" "1.4.0-rc1" "1.4.0-rc1+ent" "1.4.0" "1.4.1"  "1.4.1+ent" "1.4.2"  "1.4.2+ent")

VAULT_0XX=("${VAULT_07X[@]}" "${VAULT_08X[@]}" "${VAULT_09X[@]}" "${VAULT_010X[@]}" "${VAULT_011X[@]}")
VAULT_1XX=("${VAULT_10X[@]}" "${VAULT_11X[@]}" "${VAULT_12X[@]}" "${VAULT_13X[@]}" "${VAULT_14X[@]}")

# shorthands for Vault versions with and without prefix in checksums file
VAULT_NONPREFIXED=("${VAULT_0XX[@]}" "${VAULT_10X[@]}" "${VAULT_11X[@]}" "${VAULT_12X_NONPREFIXED[@]}" "${VAULT_13X[@]}" "${VAULT_14X[@]}")
VAULT_PREFIXED=("${VAULT_12X_PREFIXED[@]}")
