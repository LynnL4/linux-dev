#!/bin/sh
#
ARCH=$(uname -m)

config="stm32_defconfig"

build_prefix="-stm32-r"
branch_prefix="stm32mp1-v"
branch_postfix=".9"
bborg_branch="4.19"

# stm32mp1 uImage required
# ZRELADDR="0xC2000040"

#arm
KERNEL_ARCH=arm
#toolchain="gcc_linaro_eabi_4_8"
#toolchain="gcc_linaro_eabi_4_9"
#toolchain="gcc_linaro_eabi_5"
#toolchain="gcc_linaro_eabi_6"
#toolchain="gcc_linaro_eabi_7"
#toolchain="gcc_linaro_gnueabi_4_6"
#toolchain="gcc_linaro_gnueabihf_4_7"
#toolchain="gcc_linaro_gnueabihf_4_8"
#toolchain="gcc_linaro_gnueabihf_4_9"
#toolchain="gcc_linaro_gnueabihf_5"
#toolchain="gcc_linaro_gnueabihf_6"
#toolchain="gcc_linaro_gnueabihf_7"
toolchain="gcc_arm_gnueabihf_8"
#arm64
#KERNEL_ARCH=arm64
#toolchain="gcc_linaro_aarch64_gnu_5"
#toolchain="gcc_linaro_aarch64_gnu_6"
#toolchain="gcc_linaro_aarch64_gnu_7"
#toolchain="gcc_arm_aarch64_gnu_8"

#Kernel
KERNEL_REL=4.19
KERNEL_TAG=${KERNEL_REL}.9
kernel_rt=".8-rt6"
#Kernel Build
BUILD=${build_prefix}1

#v4.X-rcX + upto SHA
#prev_KERNEL_SHA=""
#KERNEL_SHA=""

#git branch
BRANCH="${branch_prefix}${KERNEL_REL}${branch_postfix}"

DISTRO=stable
DEBARCH=armhf

stm32mp1_git_old_release="be53d23e68c29900da6b6ce486b5ab8507de94b1"
       stm32mp1_git_post="0d6c2e1f6a4a46f8ce35c4c0df474dac7c41832e"
#
