#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "Run as root!" 1>&2
  exit 1
fi

echo "CRACKEDBOOK V0.1 -- by skuldug12"
read -p "Have you removed rootfs verification yet? [Y/n]" rootfsver

case $rootfsver in
  y|Y|) 
      continue 
      ;;
  n|N) 
     echo "run first, rerun with recommended partition and reboot: sudo /usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification"
     exit
     ;;
esac

read -p "Do you have chromebrew? [Y/n]" chromebrewinst

case $chromebrewinst in
  y|Y|) 
      continue 
      ;;
  n|N) 
     echo "installing chromebrew for necessary dependencies..."
     curl -Ls https://raw.github.com/skycocker/chromebrew/master/install.sh | bash
     ;;
esac

echo "Making ./tmpchbookdownloads"
mkdir ./tmpchbookdownloads
cd ./tmpchbookdownloads

echo "Getting .debs for dpkg and apt and extracting them into root directory + subdirectories..."

wget http://ftp.us.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.7_amd64.deb
ar x dpkg_1.19.7_amd64.deb
tar -xvf data.tar.xz -C /
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/b/bzip2/libbz2-1.0_1.0.6-9.2~deb10u1_amd64.deb
ar x libbz2-1.0_1.0.6-9.2~deb10u1_amd64.deb
tar -xvf data.tar.xz -C /
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/g/glibc/libc6_2.28-10_amd64.deb
ar x libc6_2.28-10_amd64.deb
tar -xvf data.tar.xz -C /
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/g/gcc-8/libgcc1_8.3.0-6_amd64.deb
ar x libgcc1_8.3.0-6_amd64.deb
tar -xvf data.tar.xz -C /
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/g/gcc-8/gcc-8-base_8.3.0-6_amd64.deb
ar x gcc-8-base_8.3.0-6_amd64.deb
tar -xvf data.tar.xz -C /
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/x/xz-utils/liblzma5_5.2.4-1_amd64.deb
ar x liblzma5_5.2.4-1_amd64.deb
tar -xvf data.tar.xz -C /
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/libs/libselinux/libselinux1_2.8-1+b1_amd64.deb
ar x libselinux1_2.8-1+b1_amd64.deb
tar -xvf data.tar.xz -C /
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/p/pcre3/libpcre3_8.39-12_amd64.deb
ar x libpcre3_8.39-12_amd64.deb
tar -xvf data.tar.xz -C /
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/z/zlib/zlib1g_1.2.11.dfsg-1_amd64.deb
ar x zlib1g_1.2.11.dfsg-1_amd64.deb
tar -xvf data.tar.xz -C /
rm -f *

wget http://security.debian.org/debian-security/pool/updates/main/a/apt/apt_1.8.2.1_amd64.deb
ar x apt_1.8.2.1_amd64.deb
tar -xvf data.tar.xz -C /
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/g/gnutls28/libgnutls30_3.6.7-4+deb10u3_amd64.deb
ar x libgnutls30_3.6.7-4+deb10u3_amd64.deb
tar -xvf data.tar.xz -C /
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/g/gmp/libgmp10_6.1.2+dfsg-4_amd64.deb
ar x libgmp10_6.1.2+dfsg-4_amd64.deb
tar -xvf data.tar.xz -C /
rm -f *

echo "Destroying tmpchbookdownloads"
rm -rf ./tmpchbookdownloads
