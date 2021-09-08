#!/system/bin/sh
#
if [ -e /system/xbin/su ];
then
   root=1
elif [ -e /system/bin/su ];
then
     root=1
elif [ -e /sbin/su ];
then
     root=1
fi
export sdk=`getprop ro.build.version.sdk`
export pass1=`echo ${2:0:1}`
export pass2=`echo ${3:0:1}`
export pass3=`echo ${4:0:1}`
export pass4=`echo ${5:0:1}`
if [ "$sdk" -gt 16 ]; then
sdpath=/data/media/0
else
sdpath=/data/media
fi
if [ "$root" -eq 1 ];
then
clear
echo "Android Manager 1.0 Script for Universal Android Devices"
echo ""
echo "현재기기:`getprop ro.product.model`"
echo "현재버젼:`getprop ro.build.version.release`"
echo "제조업체:`getprop ro.product.manufacturer`"
echo "메인보드:`getprop ro.product.board`"
echo "Build KST(GMT+9) 10:10 2019/10/02"
echo ""
echo "------------------------------------"
echo " 루팅카운트 초기화 [1]"
echo " Busybox 설치 [773]"
echo " 파티션 백업 [3]"
echo " 파티션 복원 [4]"
echo " zip파일 플래싱 [5]"
echo " WIFI 맥주소 변경 [6]"
echo " 고급부팅옵션 [7]"
echo " 멀티부팅 설정 [8]"
echo " 도움말 [99]"
echo " Version Check [100]"
echo " 제작자/기여자 [777]"
echo "------------------------------------"
echo ""
echo "경고!! 아래 내용을 반드시 읽어주세요"
echo ""
echo "반드시 도움말을 먼저 읽고 사용해주세요."
echo "도움말을 읽지 않고 사용함으로"
echo "인해 발생한 문제는 AndTeam은 책임지지 않습니다."
echo ""
else
  clear
  echo "이 툴을 사용하기 위해서는 반드시 루팅이 되어있어야 합니다. 루팅을 한뒤 실행해주세요."
fi
export model=`getprop ro.product.model`
export modelnumber=`echo ${model:4:3}`
if [ "$1" -eq 1 ]; then
(if [ "$modelnumber" -eq 850 ]; then
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/aboot seek=10485268 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=206854 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=206856 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=206857 bs=1 count=1
elif [ "$modelnumber" -eq 840 ]; then
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/aboot seek=2620948 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=205316 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=205318 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=205320 bs=1 count=1
elif [ "$modelnumber" -eq 870 ]; then
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/aboot seek=20971028 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=206854 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=206856 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=206857 bs=1 count=1
elif [ "$modelnumber" -eq 880 ]; then
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/aboot seek=31456788 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=230920 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=230918 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=230916 bs=1 count=1
elif [ "$modelnumber" -eq 920 ]; then
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/aboot seek=31456788 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=230920 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=230918 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=230916 bs=1 count=1
elif [ "$modelnumber" -eq 890 ]; then
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/aboot seek=31456788 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=230920 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=230918 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=230916 bs=1 count=1
elif [ "$modelnumber" -eq 900 ]; then
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/aboot seek=31456788 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=230920 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=230918 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=230916 bs=1 count=1
elif [ "$modelnumber" -eq 910 ]; then
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=333320 bs=1 count=1
  dd if=/dev/zero of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=333316 bs=1 count=1
fi)
	echo "rooting count reset complete"
elif [ "$1" -eq 773 ]; then
  mount -o remount,rw /system
  cp $sdpath/Download/busybox /data/local/tmp/busybox
  cp $sdpath/download/busybox /data/local/tmp/busybox
  cp /data/local/tmp/busybox /system/xbin/busybox
  clear
  chmod 777 /system/xbin/busybox
  busybox --install /system/xbin
	echo "busybox installed"
elif [ "$1" -eq 3 ];
then
(if [ "$pass2" = / ];
then
  clear
  dd if=/dev/block/platform/msm_sdcc.1/by-name/$2 of=$3
  clear
(if [ -e "$3" ];
then
echo $2"파티션을 "$3"경로에 백업하였습니다."
else
echo $2"파티션이 존재하지 않거나 "$3"경로에 백업할 수 없습니다."
fi)
else 
dd if=/dev/block/platform/msm_sdcc.1/by-name/$2 of=$PWD"/"$3
clear
(if [ -e "$3" ];
then
echo $2"파티션을 "$PWD"/"$3"경로에 백업하였습니다."
else
echo $2"파티션이 존재하지 않거나 "$PWD"/"$3"경로에 백업할 수 없습니다."
fi)
fi)
elif [ "$1" -eq 4 ]; then
(if [ "$pass2" = / ];
then
  dd if=$3 of=/dev/block/platform/msm_sdcc.1/by-name/$2
  clear
(if [ -e "$3" ];
then
echo $3"백업파일을 "$2"파티션에 복원하였습니다."
else
echo $3"경로에 백업파일 존재하지 않거나"$2"파티션이 없습니다."
fi)
else
dd if=$PWD"/"$3 of=/dev/block/platform/msm_sdcc.1/by-name/$2
  clear
(if [ -e "$3" ];
then
echo $PWD"/"$3"백업파일을 "$2"파티션에 복원하였습니다."
else
echo $PWD"/"$3"경로에 백업파일 존재하지 않거나"$2"파티션이 없습니다."
fi)
fi)
elif [ "$1" -eq 5 ]; then
export sdcardfind=`echo ${3:9:10}`
export sdcardpath1=`echo ${3:1:6}`
export sdcardpath2=`echo ${4:1:6}`
export sdcardpath3=`echo ${5:1:6}`
export sdcardpathend1=`echo ${3:7}`
export sdcardpathend2=`echo ${4:7}`
export sdcardpathend3=`echo ${5:7}`
export emulatedpaths=`echo ${3:19}`
export sdcardfinds=`echo ${4:9:10}`
export emulatedpathss=`echo ${4:19}`
export sdcardfindss=`echo ${5:9:10}`
export emulatedpathsss=`echo ${5:19}`
export legacy1=`echo ${3:24}`
export legacy2=`echo ${4:24}`
export legacy3=`echo ${5:24}`
export no2=`echo ${3:0:1}`
export no3=`echo ${4:0:1}`
export no4=`echo ${5:0:1}`
(if [ "$2" = cwm ];
then
echo "run_program(\"/sbin/cp\", \"-R\", \"/cache/recovery\", \"/tmp/recovery\");" > /cache/recovery/extendedcommand
echo "ui_print(\"Android Manager mobile installer\");" >> /cache/recovery/extendedcommand
 (if [ "$sdcardfind" = emulated/0 ];
then
echo "assert(install_zip(\"""$sdpath""$emulatedpaths""\"));" >> /cache/recovery/extendedcommand
elif [ "$sdcardpath1" = sdcard ]; then
echo "assert(install_zip(\"""$sdpath""$sdcardpathend1""\"));" >> /cache/recovery/extendedcommand
 elif [ "$sdcardfind" = emulated/l ];
then
  echo "assert(install_zip(\"""$sdpath""$legacy1""\"));" >> /cache/recovery/extendedcommand
  elif [ "$3" = wipedata ]; then
  echo "format(\"/data\")" >> /cache/recovery/extendedcommand
elif [ "$3" = wipecache ]; then
  echo "format(\"/cache\")" >> /cache/recovery/extendedcommand
elif [ "$no2" = / ]; then
echo "assert(install_zip(\"""$3""\"));" >> /cache/recovery/extendedcommand
fi)
(if [ "$sdcardfinds" = emulated/0 ];
then
echo "assert(install_zip(\"""$sdpath""$emulatedpathss""\"));" >> /cache/recovery/extendedcommand
elif [ "$sdcardpath2" = sdcard ];
then
  echo "assert(install_zip(\"""$sdpath""$sdcardpathend2""\"));" >> /cache/recovery/extendedcommand
elif [ "$sdcardfinds" = emulated/l ];
then
  echo "assert(install_zip(\"""$sdpath""$legacy2""\"));" >> /cache/recovery/extendedcommand
elif [ "$4" = wipedata ];
then
  echo "format(\"/data\")" >> /cache/recovery/extendedcommand
elif [ "$4" = wipecache ]; then
  echo "format(\"/cache\")" >> /cache/recovery/extendedcommand
elif [ "$no3" = / ]; then
echo "assert(install_zip(\"""$4""\"));" >> /cache/recovery/extendedcommand
elif [ "$4" -eq 1 ];
then
reboot recovery
fi)
(if [ "$sdcardfindss" = emulated/0 ];
then
echo "assert(install_zip(\"""$sdpath""$emulatedpathsss""\"));" >> /cache/recovery/extendedcommand
elif [ "$sdcardfindss" = emulated/l ];
then
  echo "assert(install_zip(\"""$sdpath""$legacy3""\"));" >> /cache/recovery/extendedcommand
elif [ "$sdcardpath3" = sdcard ]; then
echo "assert(install_zip(\"""$sdpath""$sdcardpathend3""\"));" >> /cache/recovery/extendedcommand
elif [ "$5" = wipedata ]; then
  echo "format(\"/data\")" >> /cache/recovery/extendedcommand
elif [ "$5" = wipecache ]; then
  echo "format(\"/cache\")" >> /cache/recovery/extendedcommand
elif [ "$no4" = / ]; then
echo "assert(install_zip(\"""$5""\"));" >> /cache/recovery/extendedcommand
elif [ "$5" -eq 1 ];
then
reboot recovery
fi)
elif [ "$2" = twrp ];
then
echo "print ""Android Manager mobile installer" > /cache/recovery/openrecoveryscript
 (if [ "$sdcardfind" = emulated/0 ];
then
  echo "install ""$sdpath""$emulatedpaths" >> /cache/recovery/openrecoveryscript
elif [ "$sdcardfind" = emulated/l ];
then
  echo "install ""$sdpath""$legacy1" >> /cache/recovery/openrecoveryscript
elif [ "$sdcardpath1" = sdcard ]; then
  echo "install ""$sdpath""$sdcardpathend1" >> /cache/recovery/openrecoveryscript
  elif [ "$3" = wipedata ]; then
  echo "wipe data" >> /cache/recovery/openrecoveryscript
elif [ "$3" = wipecache ]; then
  echo "wipe cache" >> /cache/recovery/openrecoveryscript
elif [ "$no2" = / ]; then
echo "install ""$3" >> /cache/recovery/openrecoveryscript
fi)
(if [ "$sdcardfinds" = emulated/0 ];
then
echo "install ""$sdpath""$emulatedpathss" >> /cache/recovery/openrecoveryscript
elif [ "$sdcardfinds" = emulated/l ];
then
  echo "install ""$sdpath""$legacy2" >> /cache/recovery/openrecoveryscript
elif [ "$sdcardpath2" = sdcard ]; then
  echo "install ""$sdpath""$sdcardpathend2" >> /cache/recovery/openrecoveryscript
elif [ "$4" = wipedata ]; then
  echo "wipe data" >> /cache/recovery/openrecoveryscript
elif [ "$4" = wipecache ]; then
  echo "wipe cache" >> /cache/recovery/openrecoveryscript
elif [ "$no3" = / ]; then
echo "install ""$4" >> /cache/recovery/openrecoveryscript
elif [ "$4" -eq 1 ];
then
reboot recovery
fi)
(if [ "$sdcardfindss" = emulated/0 ];
then
echo "install ""$sdpath""$emulatedpathsss" >> /cache/recovery/openrecoveryscript
elif [ "$sdcardfindss" = emulated/l ];
then
  echo "install ""$sdpath""$legacy3" >> /cache/recovery/openrecoveryscript
elif [ "$sdcardpath3" = sdcard ]; then
echo "install ""$sdpath""$sdcardpathend3" >> /cache/recovery/openrecoveryscript
elif [ "$5" = wipedata ]; then
  echo "wipe data" >> /cache/recovery/openrecoveryscript
elif [ "$5" = wipecache ]; then
  echo "wipe cache" >> /cache/recovery/openrecoveryscript
elif [ "$no4" = / ]; then
echo "install ""$5" >> /cache/recovery/openrecoveryscript
elif [ "$5" -eq 1 ];
then
reboot recovery
fi)
fi)
(if [ "$6" -eq 1 ];
then
reboot recovery
fi)
chmod 777 /cache/recovery/extendedcommand
chmod 777 /cache/recovery/openrecoveryscript
clear
echo "자동 플래싱이 설정되었습니다. 리커버리모드로 재부팅해주세요."
elif [ "$1" -eq 6 ]; then
export mac1=`echo ${2:0:2}`
export mac2=`echo ${2:2:2}`
export mac3=`echo ${2:4:2}`
export mac4=`echo ${2:6:2}`
export mac5=`echo ${2:8:2}`
export mac6=`echo ${2:10:2}`
export macch=`echo -e "\x""$mac1""\x""$mac2""\x""$mac3""\x""$mac4""\x""$mac5""\x""$mac6"`
echo $macch > /data/mac.txt
(if [ "$modelnumber" -eq 880 ]; then
dd if=/data/mac.txt of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=222724 bs=1 count=6
elif [ "$modelnumber" -eq 900 ]; then
dd if=/data/mac.txt of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=222724 bs=1 count=6
elif [ "$modelnumber" -eq 920 ]; then
dd if=/data/mac.txt of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=222724 bs=1 count=6
elif [ "$modelnumber" -eq 890 ]; then
dd if=/data/mac.txt of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=222724 bs=1 count=6
elif [ "$modelnumber" -eq 840 ]; then
dd if=/data/mac.txt of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=197124 bs=1 count=6
elif [ "$modelnumber" -eq 870 ]; then
dd if=/data/mac.txt of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=197124 bs=1 count=6
elif [ "$modelnumber" -eq 850 ]; then
dd if=/data/mac.txt of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=197124 bs=1 count=6
elif [ "$modelnumber" -eq 910 ]; then
dd if=/data/mac.txt of=/dev/block/platform/msm_sdcc.1/by-name/rawdata seek=325124 bs=1 count=6
fi)
clear
echo "mac 어드레스가 변경되었습니다."
echo "변경된 mac주소는 재부팅후 적용됩니다."
elif [ "$1" -eq 7 ];
then
(if [ "$2" -eq 1 ];
then
reboot
elif [ "$2" -eq 2 ];
then
reboot recovery
elif [ "$2" -eq 3 ];
then
reboot -p
elif [ "$2" -eq 4 ];
then
am restart android
fi)
elif [ "$1" -eq 99 ]; then
clear
echo "------------도움말------------"
echo ""
echo "exam) adm 1"
echo "3번메뉴: adm 3 파티션이름 백업할경로"
echo "exam) adm 3 boot /sdcard/boot.img"
echo ""
echo "4번메뉴: adm 4 파티션이름 백업했던 경로"
echo "exam) adm 4 boot /sdcard/boot.img"
echo ""
echo "5번메뉴: adm 5 리커버리종류 옵션 옵션 옵션"
echo "리커버리 종류는 cwm과 twrp중 선택해서 넣으셔야하고 필즈 리커버리는 twrp방식이 호환됩니다."
echo "옵션부분에(최대 3개) 플래싱할 zip파일 경로나 초기화 옵션을 넣을수 있습니다. 5번메뉴를 사용할려면 옵션은 반드시 1개는 넣으셔야합니다."
echo ""
echo "옵션은 먼저 넣은 옵션먼저 순서대로 작동합니다."
echo "옵션에 zip파일 경로를 넣을시: 해당 zip이 플래싱됩니다."
echo "옵션에 wipedata를 넣을시: /data와 /cache파티션이 초기화됩니다."
echo "옵션에 wipecache를 넣을시: /cache파티션이 초기화됩니다."
echo ""
echo "6번메뉴:adm 6 xxxxxxxxxxxx"
echo "x부분에 변경할 맥주소를 넣으면 됩니다."
echo "띄어쓰기는 넣지마세요"
echo ""
echo "경고!"
echo "Warning!"
echo 
echo "맥주소 변경시 실제 맥주소가 변경되므로 반드시 원래의 맥주소를 따로 적어두세요."
echo "맥주소 변경후 원래의 맥주소를 잊어버렸을 경우 AndTeam은 책임지지 않습니다."
echo ""
echo "7번메뉴: adm 7 모드"
echo "모드 종류"
echo "1: 재부팅"
echo "2: 리커버리모드 진입"
echo "3: 시스템 종료"
echo "4: 빠른 재부팅"
echo ""
echo 
echo "8번메뉴 adm 8  옵션 옵션 옵션"
echo "8번메뉴를 사용하기 전에 먼저 busybox설치가 필요합니다."
echo "옵션에는 zip파일 경로를 입력해주세요"
elif [ "$1" -eq 45 ]; then
clear
(if [ "$2" != "8" ];
then
echo "zip에서 커널을 추출하는 중입니다."
/data/local/AIK-mobile/bin/busybox unzip $2 boot.img -n -d /data/local/AIK-mobile
echo "추출한 커널을 언팩하는 중입니다."
/data/local/AIK-mobile/unpackimg.sh boot.img
/data/local/AIK-mobile/bin/busybox sed 's/ \/system/\/systems/g' /data/local/AIK-mobile/ramdisk/fstab.qcom > /data/local/AIK-mobile/ramdisk/fstab.qcoms
/data/local/AIK-mobile/bin/busybox sed 's/ \/data/\/datas/g' /data/local/AIK-mobile/ramdisk/fstab.qcoms > /data/local/AIK-mobile/ramdisk/fstab.qcom
/data/local/AIK-mobile/bin/busybox sed 's/ \/cache/\/caches/g' /data/local/AIK-mobile/ramdisk/fstab.qcom > /data/local/AIK-mobile/ramdisk/fstab.qcoms
rm /data/local/AIK-mobile/ramdisk/fstab.qcom
/data/local/AIK-mobile/bin/busybox cp /data/local/AIK-mobile/ramdisk/fstab.qcoms /data/local/AIK-mobile/ramdisk/fstab.qcom
rm /data/local/AIK-mobile/ramdisk/fatab.qcoms
chmod 777 /data/local/AIK-mobile/ramdisk/fstab.qcoms
mount -o remount,rw /
mount -o remount,rw /system
rm -rf /data/local/AIK-mobile/ramdisk/cache
rm -rf /data/local/AIK-mobile/ramdisk/data
rm -rf /data/local/AIK-mobile/ramdisk/system
mkdir /data/local/AIK-mobile/ramdisk/caches
mkdir /data/local/AIK-mobile/ramdisk/datas
mkdir /data/local/AIK-mobile/ramdisk/systems
mkdir /caches
mkdir /datas
mkdir /systems
mkdir /datas/multi
mkdir /caches/multi
/data/local/AIK-mobile/bin/busybox mkdir -m 0777 /data/systemmulti
/data/local/AIK-mobile/bin/busybox mkdir -m 0777 /data/mbackup
/data/local/AIK-mobile/bin/busybox mkdir -m 0777 /data/multi
/data/local/AIK-mobile/bin/busybox mkdir -m 0777 /cache/multi
/data/local/AIK-mobile/bin/busybox mkdir -m 0777 /system/multi
ln -s /caches/multi /data/local/AIK-mobile/ramdisk/cache
ln -s /datas/multi /data/local/AIK-mobile/ramdisk/data
ln -s /datas/systemmulti /data/local/AIK-mobile/ramdisk/system
/data/local/AIK-mobile/repackimg.sh
cp /data/local/AIK-mobile/image-new.img /cache/boot.img
dd if=/dev/block/platform/msm_sdcc.1/by-name/boot of=/cache/b.img
export sdcardfind=`echo ${2:9:10}`
export sdcardpath1=`echo ${2:1:6}`
export sdcardpath2=`echo ${3:1:6}`
export sdcardpath3=`echo ${4:1:6}`
export sdcardpathend1=`echo ${2:7}`
export sdcardpathend2=`echo ${3:7}`
export sdcardpathend3=`echo ${4:7}`
export emulatedpaths=`echo ${2:19}`
export sdcardfinds=`echo ${3:9:10}`
export emulatedpathss=`echo ${3:19}`
export sdcardfindss=`echo ${4:9:10}`
export emulatedpathsss=`echo ${4:19}`
export legacy1=`echo ${2:24}`
export legacy2=`echo ${3:24}`
export legacy3=`echo ${5:24}`
export no2=`echo ${2:0:1}`
export no3=`echo ${3:0:1}`
export no4=`echo ${4:0:1}`
echo "print ""Android Manager mobile multirom flashing" > /cache/recovery/openrecoveryscript
echo "mount system" >> /cache/recovery/openrecoveryscript
echo "mount data" >> /cache/recovery/openrecoveryscript
echo "print copying data" >> /cache/recovery/openrecoveryscript
echo "cmd cp -a /system /data/mbackup" >> /cache/recovery/openrecoveryscript
 (if [ "$sdcardfind" = emulated/0 ];
then
  echo "install ""$sdpath""$emulatedpaths" >> /cache/recovery/openrecoveryscript
elif [ "$sdcardfind" = emulated/l ];
then
  echo "install ""$sdpath""$legacy1" >> /cache/recovery/openrecoveryscript
elif [ "$sdcardpath1" = sdcard ]; then
  echo "install ""$sdpath""$sdcardpathend1" >> /cache/recovery/openrecoveryscript
  elif [ "$2" = wipedata ]; then
  echo "wipe data" >> /cache/recovery/openrecoveryscript
elif [ "$2" = wipecache ]; then
  echo "wipe cache" >> /cache/recovery/openrecoveryscript
elif [ "$no2" = / ]; then
echo "install ""$2" >> /cache/recovery/openrecoveryscript
fi)
(if [ "$sdcardfinds" = emulated/0 ];
then
echo "install ""$sdpath""$emulatedpathss" >> /cache/recovery/openrecoveryscript
elif [ "$sdcardfinds" = emulated/l ];
then
  echo "install ""$sdpath""$legacy2" >> /cache/recovery/openrecoveryscript
elif [ "$sdcardpath2" = sdcard ]; then
  echo "install ""$sdpath""$sdcardpathend2" >> /cache/recovery/openrecoveryscript
elif [ "$3" = wipedata ]; then
  echo "wipe data" >> /cache/recovery/openrecoveryscript
elif [ "$3" = wipecache ]; then
  echo "wipe cache" >> /cache/recovery/openrecoveryscript
elif [ "$no3" = / ]; then
echo "install ""$3" >> /cache/recovery/openrecoveryscript
elif [ "$3" -eq 1 ];
then
reboot recovery
fi)
(if [ "$sdcardfindss" = emulated/0 ];
then
echo "install ""$sdpath""$emulatedpathsss" >> /cache/recovery/openrecoveryscript
elif [ "$sdcardfindss" = emulated/l ];
then
  echo "install ""$sdpath""$legacy3" >> /cache/recovery/openrecoveryscript
elif [ "$sdcardpath3" = sdcard ]; then
echo "install ""$sdpath""$sdcardpathend3" >> /cache/recovery/openrecoveryscript
elif [ "$4" = wipedata ]; then
  echo "wipe data" >> /cache/recovery/openrecoveryscript
elif [ "$4" = wipecache ]; then
  echo "wipe cache" >> /cache/recovery/openrecoveryscript
elif [ "$no4" = / ]; then
echo "install ""$4" >> /cache/recovery/openrecoveryscript
elif [ "$4" -eq 1 ];
then
reboot recovery
fi)
(if [ "$5" -eq 1 ];
then
reboot recovery
fi)
echo "mount system" >> /cache/recovery/openrecoveryscript
echo "mount data" >> /cache/recovery/openrecoveryscript
echo "cmd cp -a /system/* /data/systemmulti" >> /cache/recovery/openrecoveryscript
echo "umount system" >> /cache/recovery/openrecoveryscript
echo "cmd mke2fs -t ext4 /dev/block/platform/msm_sdcc.1/by-name/system" >> /cache/recovery/openrecoveryscript
echo "mount system" >> /cache/recovery/openrecoveryscript
echo "mount cache" >> /cache/recovery/openrecoveryscript
echo "cmd cp -a /data/mbackup/system/* /system" >> /cache/recovery/openrecoveryscript
echo "cmd dd if=/cache/b.img of=/dev/block/platform/msm_sdcc.1/by-name/boot" >> /cache/recovery/openrecoveryscript
echo "cmd dd if=/cache/boot.img of=/dev/block/platform/msm_sdcc.1/by-name/recovery" >> /cache/recovery/openrecoveryscript
echo "cmd rm -rf /data/mbackup" >> /cache/recovery/openrecoveryscript
chmod 777 /cache/recovery/openrecoveryscript
clear
echo "멀티부팅이 설정되었습니다. twrp로 재부팅해주세요."
else
echo "zip파일은 최소한 1개이상 지정하셔야합니다."
fi)
elif [ "$1" -eq 100 ]; then
clear
  echo ""
  echo "VERSION INFO"
  echo ""
  echo "Android Manager 1.0 rebuild"
  echo "Build KST(GMT+9) 22:10 2019/10/02"
  echo "And Team 테스트 전용, 무단유출 금지"
  echo ""
elif [ "$1" -eq 777 ]; then    
clear
  echo "-----------------------------------"
  echo "| 제작자:어떤과학의 라스트오더    |"
	echo "|                                 |"
  echo "| 제작자:reswns0210 (구 Yun)     |"
  echo "|                                 |"
  echo "| 기여자:아이스크림 샌드위치      |"
  echo "|       :KOT49H                   |"
  echo "|       :LINE                     |"
  echo "|       :TimeWarP                   |"
  echo "|                         |"
  echo "|                                 |"
  echo "-----------------------------------"
  echo ""
elif [ "$1" -eq 999 ]; then          
  echo "make by lastorder"
	 echo "make by KOT49H"
  echo "make by ICS"
  echo "make by reswns0210(구 Yun)"
  echo "make by Line"
fi
# 이 스크립트의 저작권은 AND Team에 있으며 무단 수정 · 2차 수정후 배포을 금합니다. 