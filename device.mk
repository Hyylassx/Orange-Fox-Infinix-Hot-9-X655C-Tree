# --- PART 1: ROOT CONFIGURATION ---
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/dtb.img:dtb.img \
    $(DEVICE_PATH)/recovery/root/ueventd.mt6765.rc:recovery/root/ueventd.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.mt6765.rc:recovery/root/init.recovery.mt6765.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.microtrust.rc:recovery/root/init.recovery.microtrust.rc

# --- PART 2: SYSTEM ETC ---
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/etc/twrp.flags:recovery/root/system/etc/twrp.flags \
    $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab:recovery/root/system/etc/recovery.fstab

# --- PART 3: VENDOR VINTF ---
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/etc/vintf/manifest.xml:recovery/root/vendor/etc/vintf/manifest.xml \
    $(DEVICE_PATH)/recovery/root/vendor/etc/vintf/compatibility_matrix.xml:recovery/root/vendor/etc/vintf/compatibility_matrix.xml

# --- PART 4: VENDOR FIRMWARE ---
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_fw.bin:recovery/root/vendor/firmware/novatek_ts_fw.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_mp.bin:recovery/root/vendor/firmware/novatek_ts_mp.bin

# --- PART 5: SYSTEM LIBRARIES 32-BIT ---
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/lib/libkeystore_aidl.so:root/system/lib/libkeystore_aidl.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libkeystore_binder.so:root/system/lib/libkeystore_binder.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libkeystore_parcelables.so:root/system/lib/libkeystore_parcelables.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libhidlmemory.so:root/system/lib/libhidlmemory.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libsysutils.so:root/system/lib/libsysutils.so


PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/lib/android.hidl.memory@1.0.so:root/system/lib/android.hidl.memory@1.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib/android.hardware.keymaster@3.0.so:root/system/lib/android.hardware.keymaster@3.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib/android.hardware.keymaster@4.0.so:root/system/lib/android.hardware.keymaster@4.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib/android.hardware.gatekeeper@1.0.so:root/system/lib/android.hardware.gatekeeper@1.0.so

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/lib/libkeymaster_messages.so:root/system/lib/libkeymaster_messages.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libkeymaster_portable.so:root/system/lib/libkeymaster_portable.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libsoftkeymasterdevice.so:root/system/lib/libsoftkeymasterdevice.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libkeymaster4support.so:recovery/root/system/lib/libkeymaster4support.so \
    $(DEVICE_PATH)/recovery/root/system/lib/libpuresoftkeymasterdevice.so:recovery/root/system/lib/libpuresoftkeymasterdevice.so

# --- PART 6: SYSTEM LIBRARIES 64-BIT ---
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/lib64/libfscrypt.so:root/system/lib64/libfscrypt.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libsysutils.so:root/system/lib64/libsysutils.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libhidlmemory.so:root/system/lib64/libhidlmemory.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libkeystore_aidl.so:root/system/lib64/libkeystore_aidl.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libkeystore_binder.so:root/system/lib64/libkeystore_binder.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libkeystore_parcelables.so:root/system/lib64/libkeystore_parcelables.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libwifikeystorehal.so:root/system/lib64/libwifikeystorehal.so

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/lib64/android.hidl.memory@1.0.so:root/system/lib64/android.hidl.memory@1.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/android.hardware.keymaster@3.0.so:root/system/lib64/android.hardware.keymaster@3.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/android.hardware.keymaster@4.0.so:root/system/lib64/android.hardware.keymaster@4.0.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/android.hardware.gatekeeper@1.0.so:root/system/lib64/android.hardware.gatekeeper@1.0.so

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/lib64/libkeymaster4support.so:recovery/root/system/lib64/libkeymaster4support.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libkeymaster_messages.so:root/system/lib64/libkeymaster_messages.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libkeymaster_portable.so:root/system/lib64/libkeymaster_portable.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libsoftkeymasterdevice.so:root/system/lib64/libsoftkeymasterdevice.so \
    $(DEVICE_PATH)/recovery/root/system/lib64/libpuresoftkeymasterdevice.so:recovery/root/system/lib64/libpuresoftkeymasterdevice.so

# --- PART 7: VENDOR BINARIES ---
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/bin/vndservice:recovery/root/vendor/bin/vndservice \
    $(DEVICE_PATH)/recovery/root/vendor/bin/teei_daemon:recovery/root/vendor/bin/teei_daemon \
    $(DEVICE_PATH)/recovery/root/vendor/bin/bp_kmsetkey_ca:recovery/root/vendor/bin/bp_kmsetkey_ca \
    $(DEVICE_PATH)/recovery/root/vendor/bin/vndservicemanager:recovery/root/vendor/bin/vndservicemanager \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service:recovery/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/vendor.microtrust.hardware.capi@2.0-service:recovery/root/vendor/bin/hw/vendor.microtrust.hardware.capi@2.0-service \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/android.hardware.keymaster@4.0-service.beanpod:recovery/root/vendor/bin/hw/android.hardware.keymaster@4.0-service.beanpod \
    $(DEVICE_PATH)/recovery/root/vendor/bin/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-service:recovery/root/vendor/bin/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-service

# --- PART 8: VENDOR LIBRARIES 32-BIT ---
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libmtee.so:recovery/root/vendor/lib/libmtee.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libion_mtk.so:recovery/root/vendor/lib/libion_mtk.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libimsg_log.so:recovery/root/vendor/lib/libimsg_log.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libion_ulit.so:recovery/root/vendor/lib/libion_ulit.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libTEECommon.so:recovery/root/vendor/lib/libTEECommon.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/libcrypto-mdapp.so:recovery/root/vendor/lib/libcrypto-mdapp.so

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/gatekeeper.mt6765.so:recovery/root/vendor/lib/hw/gatekeeper.mt6765.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/libSoftGatekeeper.so:recovery/root/vendor/lib/hw/libSoftGatekeeper.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/gatekeeper.default.so:recovery/root/vendor/lib/hw/gatekeeper.default.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/vendor.microtrust.hardware.capi@2.0.so:recovery/root/vendor/lib/vendor.microtrust.hardware.capi@2.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/android.hardware.gatekeeper@1.0-impl.so:recovery/root/vendor/lib/hw/android.hardware.gatekeeper@1.0-impl.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.0.so:recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.1.so:recovery/root/vendor/lib/vendor.mediatek.hardware.keymaster_attestation@1.1.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so:recovery/root/vendor/lib/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/kmsetkey.mt6765.so:recovery/root/vendor/lib/hw/kmsetkey.mt6765.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib/hw/kmsetkey.default.so:recovery/root/vendor/lib/hw/kmsetkey.default.so

# --- PART 9: VENDOR LIBRARIES 64-BIT ---
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libmtee.so:recovery/root/vendor/lib64/libmtee.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libion_mtk.so:recovery/root/vendor/lib64/libion_mtk.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libion_ulit.so:recovery/root/vendor/lib64/libion_ulit.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libimsg_log.so:recovery/root/vendor/lib64/libimsg_log.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libTEECommon.so:recovery/root/vendor/lib64/libTEECommon.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libifcutils_mtk.so:recovery/root/vendor/lib64/libifcutils_mtk.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libcrypto-mdapp.so:recovery/root/vendor/lib64/libcrypto-mdapp.so

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/libSoftGatekeeper.so:recovery/root/vendor/lib64/hw/libSoftGatekeeper.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/gatekeeper.mt6765.so:recovery/root/vendor/lib64/hw/gatekeeper.mt6765.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/gatekeeper.default.so:recovery/root/vendor/lib64/hw/gatekeeper.default.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/vendor.microtrust.hardware.capi@2.0.so:recovery/root/vendor/lib64/vendor.microtrust.hardware.capi@2.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl.so:recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.0.so:recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.0.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.1.so:recovery/root/vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.1.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so:recovery/root/vendor/lib64/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkmsetkey.so:recovery/root/vendor/lib64/libkmsetkey.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkeymaster4.so:recovery/root/vendor/lib64/libkeymaster4.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkeymaster4support.so:recovery/root/vendor/lib64/libkeymaster4support.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkeystore-wifi-hidl.so:recovery/root/vendor/lib64/libkeystore-wifi-hidl.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkeystore-engine-wifi-hidl.so:recovery/root/vendor/lib64/libkeystore-engine-wifi-hidl.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/kmsetkey.mt6765.so:recovery/root/vendor/lib64/hw/kmsetkey.mt6765.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/kmsetkey.default.so:recovery/root/vendor/lib64/hw/kmsetkey.default.so

# --- PART 10: TRUSTED APPLICATIONS ---
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/7778c03fc30c4dd0a319ea29643d4d4b.ta:recovery/root/vendor/thh/ta/7778c03fc30c4dd0a319ea29643d4d4b.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/7778c03fc30c4dd0a319ea29643d4dc0.ta:recovery/root/vendor/thh/ta/7778c03fc30c4dd0a319ea29643d4dc0.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/93feffccd8ca11e796c7c7a21acb4932.ta:recovery/root/vendor/thh/ta/93feffccd8ca11e796c7c7a21acb4932.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/c09c9c5daa504b78b0e46eda61556c3a.ta:recovery/root/vendor/thh/ta/c09c9c5daa504b78b0e46eda61556c3a.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/c1882f2d885e4e13a8c8e2622461b2fa.ta:recovery/root/vendor/thh/ta/c1882f2d885e4e13a8c8e2622461b2fa.ta \
    $(DEVICE_PATH)/recovery/root/vendor/thh/ta/d91f322ad5a441d5955110eda3272fc0.ta:recovery/root/vendor/thh/ta/d91f322ad5a441d5955110eda3272fc0.ta
