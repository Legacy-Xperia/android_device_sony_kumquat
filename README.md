android_device_sony_kumquat
===========================

CyanogenMod 11.0 Device tree for Sony Xperia U



Getting Started :

    mkdir cm-11.0
    cd cm-11.0
    repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0
    repo sync -j16

Patch android source code :

    patch -p1 < hardware/semc/patches/framework_av.patch
    patch -p1 < hardware/semc/patches/framework_native.patch
    patch -p1 < hardware/semc/patches/framework_base.patch
    patch -p1 < hardware/semc/patches/hardware_libhardware.patch
    patch -p1 < hardware/semc/patches/hardware_libhardware_legacy.patch
    patch -p1 < hardware/semc/patches/system_core.patch
    patch -p1 < hardware/semc/patches/bionic.patch
    patch -p1 < hardware/semc/patches/bootable_recovery.patch
    patch -p1 < hardware/semc/patches/external_bluetooth_bluedroid.patch
    patch -p1 < hardware/semc/patches/packages_apps_Bluetooth.patch

Our step is optional!!! Use only if you going to sync CM 11 source code daily, than simple revert each patch before you sync CM 11 source code :

    patch -p1 -R < hardware/semc/patches/framework_av.patch
    patch -p1 -R < hardware/semc/patches/framework_native.patch
    patch -p1 -R < hardware/semc/patches/framework_base.patch
    patch -p1 -R < hardware/semc/patches/hardware_libhardware.patch
    patch -p1 -R < hardware/semc/patches/hardware_libhardware_legacy.patch
    patch -p1 -R < hardware/semc/patches/system_core.patch
    patch -p1 -R < hardware/semc/patches/bionic.patch
    patch -p1 -R < hardware/semc/patches/bootable_recovery.patch
    patch -p1 -R < hardware/semc/patches/external_bluetooth_bluedroid.patch
    patch -p1 -R < hardware/semc/patches/packages_apps_Bluetooth.patch
    repo forall -p -c 'git checkout -f'
    repo sync
    patch -p1 < hardware/semc/patches/framework_av.patch
    patch -p1 < hardware/semc/patches/framework_native.patch
    patch -p1 < hardware/semc/patches/framework_base.patch
    patch -p1 < hardware/semc/patches/hardware_libhardware.patch
    patch -p1 < hardware/semc/patches/hardware_libhardware_legacy.patch
    patch -p1 < hardware/semc/patches/system_core.patch
    patch -p1 < hardware/semc/patches/bionic.patch
    patch -p1 < hardware/semc/patches/bootable_recovery.patch
    patch -p1 < hardware/semc/patches/external_bluetooth_bluedroid.patch
    patch -p1 < hardware/semc/patches/packages_apps_Bluetooth.patch


Download CM prebuilts [Needed Only once] :

   cd vendor/cm && ./get-prebuilts && cd ../..
   
You are ready to build :

    . build/envsetup.sh
    brunch kumquat


Credits:- Munjeni , Joise87 , 95A31 , mike(semc-2011 DEV) , Gava97 ,Andrewasth ,areshinakya ,FXP Team , CyanogenMod , Sony , Devswift1 and Paul.L for early help in cm-10.1 and Users ;)


ENJOY! 


