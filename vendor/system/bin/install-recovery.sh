#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 15140864 41af95ae0a8143d515b92eac3ece893ce2dd85a5 11044864 7be123ca1ce75d6bea12eb2274f6c0542c9cf3d7
fi
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:15140864:41af95ae0a8143d515b92eac3ece893ce2dd85a5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:11044864:7be123ca1ce75d6bea12eb2274f6c0542c9cf3d7 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 41af95ae0a8143d515b92eac3ece893ce2dd85a5 15140864 7be123ca1ce75d6bea12eb2274f6c0542c9cf3d7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
