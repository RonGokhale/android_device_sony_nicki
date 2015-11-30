#!/system/bin/sh

setprop gsm.version.baseband `strings /dev/block/platform/msm_sdcc.1/by-name/modem  | grep "M8930B-" | head -1`
