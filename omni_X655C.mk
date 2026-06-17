DEVICE_PATH := device/infinix/X655C

 $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
 $(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
 $(call inherit-product, vendor/twrp/config/common.mk)
 $(call inherit-product, device/infinix/X655C/device.mk)

PRODUCT_DEVICE := X655C
PRODUCT_NAME := omni_X655C
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Hot 9
PRODUCT_MANUFACTURER := Infinix
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_TARGET_VNDK_VERSION := 29
PRODUCT_PLATFORM := mt6765
PRODUCT_USE_DYNAMIC_PARTITIONS := true
