# crackedbook
A script to install apt and dpkg onto your AMD64 chromebook, along with chromebrew.

crackedbook wgets the required debs from the debian.org server and unzips them with ar, afterwards extracting the data.tar.xz with tar into the root directory and its subdirectories.

essentially, it's just an automated method of installing chromebrew for wget, ar and tar, and then installing apt and dpkg packages and their required dependencies.

# requirements
amd64 dev-mode chromebook. root-fs should also be removed.

# notice
if you want to do the same method for any other architecture, you have to manually replace the source links with the package for the desired architecture, and then the package name for extraction.
