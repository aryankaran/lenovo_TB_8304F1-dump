#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:10369280:7f6e092d82bf01954f8d81023d86b802676e4445; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:8884480:2dc651714bf1da4fc7fbf444f267b5e484f4b5cb EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery 7f6e092d82bf01954f8d81023d86b802676e4445 10369280 2dc651714bf1da4fc7fbf444f267b5e484f4b5cb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
