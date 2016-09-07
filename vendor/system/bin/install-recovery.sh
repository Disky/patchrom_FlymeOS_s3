#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 12957696 a309ecd30912b8a0a3ddb705d34d589dfff89d49 7852032 15b9ecb1cc416bc23e762c1052c9181492f2da09
fi

if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:12957696:a309ecd30912b8a0a3ddb705d34d589dfff89d49; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:7852032:15b9ecb1cc416bc23e762c1052c9181492f2da09 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery a309ecd30912b8a0a3ddb705d34d589dfff89d49 12957696 15b9ecb1cc416bc23e762c1052c9181492f2da09:/system/twrp-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
