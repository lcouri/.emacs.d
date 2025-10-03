## Move to emacs code folder base - run this from there
## Dependencies (packages for arch linux / pacman)
# cairo
# giflib
# gnutls
# gtk3
# harfbuzz
# jansson
# libgccjit
# libjpeg-turbo
# libotf
# libpng
# libsm
# libtiff
# libwebp
# libxcb
# libxi
# libxml2
# libxpm
# sqlite3
# tree-sitter
# xcb-util
# git
# libxi
# xorgproto

./autogen.sh
./configure CFLAGS="-O3 -march=native" LDFLAGS="-O3" --with-native-compilation --with-wide-int --with-imagemagick --with-pgtk --with-tree-sitter
make V=1 -j$(nproc)
