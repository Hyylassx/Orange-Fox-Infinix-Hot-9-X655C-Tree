#!/sbin/sh

# 1. Force the logical vendor partition to mount
restorecon -R /vendor
while [ ! -b /dev/block/mapper/vendor ]; do
    sleep 0.2
done
mount -t ext4 -o ro /dev/block/mapper/vendor /vendor

# 2. Fix driver node permissions for Microtrust Beanpod
chmod 0666 /dev/teei_client
chmod 0666 /dev/teei_config
chmod 0660 /dev/tz_mem
chown system system /dev/teei_client
chown system system /dev/tz_mem

# 3. Manually spawn the TEE and Keymaster daemons into the background
/vendor/bin/teei_daemon &
sleep 0.5
/vendor/bin/hw/android.hardware.keymaster@4.0-service.beanpod &
sleep 0.5
/vendor/bin/hw/android.hardware.gatekeeper@1.0-service &

# 4. Trigger the wait_for_keymaster binary so recovery knows they are ready
/system/bin/wait_for_keymaster

# 5. Manually start vold to trigger partition decryption
/system/bin/vold &

exit 0
