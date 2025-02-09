TERMUX_PKG_HOMEPAGE=https://wxmaxima-developers.github.io/wxmaxima/
TERMUX_PKG_DESCRIPTION="A document based interface for the computer algebra system Maxima"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=23.04.1
TERMUX_PKG_SRCURL=https://github.com/wxMaxima-developers/wxmaxima/archive/refs/tags/Version-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=869e20a02e0da97bd92da20e8a9b8a04facaea387feb09c16c5f23445b4e163f
TERMUX_PKG_DEPENDS="libc++, maxima, wxwidgets"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DwxWidgets_CONFIG_EXECUTABLE=$TERMUX_PREFIX/bin/wx-config
-DWXM_INCLUDE_FONTS=OFF
-DWXM_UNIT_TESTS=OFF
"
