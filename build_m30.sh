export CROSS_COMPILE=/mnt/NEW-FILES/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export ARCH=arm64 && export SUBARCH=arm64

make clean
make mrproper
make m30lte_00_defconfig
make -j$(nproc --all) | tee build_logs.txt
