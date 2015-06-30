#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Assert
# Stock values:
#   ro.product.device=hwMT2L03
#   ro.build.product=MT2L03
# Also:
#   ro.build.id=HuaweiMT2L03
TARGET_OTA_ASSERT_DEVICE := MT2L03,hwMT2L03,mt2

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait
TARGET_CPU_MEMCPY_BASE_OPT_DISABLE := true

# Audio
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BLUETOOTH_HCI_USE_MCT := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/mt2/bluetooth

# Board
TARGET_BOARD_PLATFORM := msm8226
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Build
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_SPECIFIC_HEADER_PATH := device/huawei/mt2/include

# Camera
COMMON_GLOBAL_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
USE_DEVICE_SPECIFIC_CAMERA := true

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_CACHEIMAGE_PARTITION_SIZE := 201326592
BOARD_PERSISTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6442450944
TARGET_USERIMAGES_USE_EXT4 := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Graphics
BOARD_EGL_CFG := device/huawei/mt2/configs/egl.cfg
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/huawei/mt2/mkbootimg.mk
BOARD_KERNEL_BASE := 0x0
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
TARGET_KERNEL_CONFIG := cyanogenmod_mt2_defconfig
TARGET_KERNEL_SOURCE := kernel/huawei/msm8928

# Power
TARGET_POWERHAL_VARIANT := qcom

# Recovery
TARGET_RECOVERY_FSTAB = device/huawei/mt2/rootdir/fstab.qcom

# SELinux
-include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += device/huawei/mt2/sepolicy

# Time
BOARD_USES_QC_TIME_SERVICES := true

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_HAS_QCOM_WLAN_SDK          := true
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE                := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
# Vendor provided wcnss_service until we have
# a method of fetching the MAC from NV
#TARGET_USES_QCOM_WCNSS_QMI       := true
#TARGET_USES_WCNSS_MAC_ADDR_REV   := true
#TARGET_USES_WCNSS_CTRL           := true
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WPA_SUPPLICANT_VERSION           := VER_0_8_X

# inherit from the proprietary version
-include vendor/huawei/mt2/BoardConfigVendor.mk
