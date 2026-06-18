# --- PART 1: ROOT CONFIGURATION ---
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/dtb.img:dtb.img \
    $(DEVICE_PATH)/recovery/root/ueventd.mt6765.rc:recovery/root/ueventd.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.mt6765.rc:recovery/root/init.recovery.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.microtrust.rc:recovery/root/init.recovery.microtrust.rc

# --- PART 2: SYSTEM ETC ---
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab:recovery/root/system/etc/recovery.fstab \
    $(DEVICE_PATH)/recovery/root/system/etc/twrp.flags:recovery/root/system/etc/twrp.flags

# --- PART 3: VENDOR FIRMWARE ---
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_fw.bin:recovery/root/vendor/firmware/novatek_ts_fw.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_mp.bin:recovery/root/vendor/firmware/novatek_ts_mp.bin

# --- PART 4: SYSTEM PROPERTIES ---
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.twrp.boot=1
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.crypto.state=encrypted
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.crypto.type=file
