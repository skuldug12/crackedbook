echo "installing chromebrew for necessary dependencies..."
curl -Ls https://raw.github.com/skycocker/chromebrew/master/install.sh | bash

echo "Making ./tmpchbookdownloads"
mkdir ./tmpchbookdownloads
cd ./tmpchbookdownloads

echo "Getting .debs for dpkg and apt and extracting them into root directory + subdirectories..."

wget http://ftp.us.debian.org/debian/pool/main/d/dpkg/dpkg_1.19.7_amd64.deb
ar x dpkg_1.19.7_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/b/bzip2/libbz2-1.0_1.0.6-9.2~deb10u1_amd64.deb
ar x libbz2-1.0_1.0.6-9.2~deb10u1_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/g/glibc/libc6_2.28-10_amd64.deb
ar x libc6_2.28-10_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/g/gcc-8/libgcc1_8.3.0-6_amd64.deb
ar x libgcc1_8.3.0-6_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/g/gcc-8/gcc-8-base_8.3.0-6_amd64.deb
ar x gcc-8-base_8.3.0-6_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/x/xz-utils/liblzma5_5.2.4-1_amd64.deb
ar x liblzma5_5.2.4-1_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/libs/libselinux/libselinux1_2.8-1+b1_amd64.deb
ar x libselinux1_2.8-1+b1_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/p/pcre3/libpcre3_8.39-12_amd64.deb
ar x libpcre3_8.39-12_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/z/zlib/zlib1g_1.2.11.dfsg-1_amd64.deb
ar x zlib1g_1.2.11.dfsg-1_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://security.debian.org/debian-security/pool/updates/main/a/apt/apt_1.8.2.1_amd64.deb
ar x apt_1.8.2.1_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/a/adduser/adduser_3.118_all.deb
ar x adduser_3.118_all.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/d/debconf/debconf_1.5.71_all.deb
ar x debconf_1.5.71_all.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/p/perl/perl-base_5.28.1-6_amd64.deb
ar x perl-base_5.28.1-6_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2019.1_all.deb
ar x debian-archive-keyring_2019.1_all.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/g/gnupg2/gpgv_2.2.12-1+deb10u1_amd64.deb
ar x gpgv_2.2.12-1+deb10u1_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.8.4-5_amd64.deb
ar x libgcrypt20_1.8.4-5_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error0_1.35-1_amd64.deb
ar x libgpg-error0_1.35-1_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://security.debian.org/debian-security/pool/updates/main/a/apt/libapt-pkg5.0_1.8.2.1_amd64.deb
ar x libapt-pkg5.0_1.8.2.1_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/l/lz4/liblz4-1_1.8.3-1_amd64.deb
ar x liblz4-1_1.8.3-1_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/s/systemd/libsystemd0_241-7~deb10u4_amd64.deb
ar x libsystemd0_241-7~deb10u4_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/s/systemd/libudev1_241-7~deb10u4_amd64.deb
ar x libudev1_241-7~deb10u4_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/libz/libzstd/libzstd1_1.3.8+dfsg-3_amd64.deb
ar x libzstd1_1.3.8+dfsg-3_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/g/glibc/libc6_2.28-10_amd64.deb
ar x libc6_2.28-10_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://security.debian.org/debian-security/pool/updates/main/g/gnutls28/libgnutls30_3.6.7-4+deb10u4_amd64.deb
ar x libgnutls30_3.6.7-4+deb10u4_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/g/gmp/libgmp10_6.1.2+dfsg-4_amd64.deb
ar x libgmp10_6.1.2+dfsg-4_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/n/nettle/libhogweed4_3.4.1-1_amd64.deb
ar x libhogweed4_3.4.1-1_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/libi/libidn2/libidn2-0_2.0.5-1+deb10u1_amd64.deb
ar x libidn2-0_2.0.5-1+deb10u1_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/n/nettle/libnettle6_3.4.1-1_amd64.deb
ar x libnettle6_3.4.1-1_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/p/p11-kit/libp11-kit0_0.23.15-2_amd64.deb
ar x libp11-kit0_0.23.15-2_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/libf/libffi/libffi6_3.2.1-9_amd64.deb
ar x libffi6_3.2.1-9_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.13-3_amd64.deb
ar x libtasn1-6_4.13-3_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/libu/libunistring/libunistring2_0.9.10-1_amd64.deb
ar x libunistring2_0.9.10-1_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/libs/libseccomp/libseccomp2_2.3.3-4_amd64.deb
ar x libseccomp2_2.3.3-4_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

wget http://ftp.us.debian.org/debian/pool/main/g/gcc-8/libstdc++6_8.3.0-6_amd64.deb
ar x libstdc++6_8.3.0-6_amd64.deb
tar -xvf data.tar.xz -C /usr/local
rm -f *

echo "Destroying tmpchbookdownloads"
rm -rf ./tmpchbookdownloads
