################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2018 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="libva-v4l2-request"
PKG_VERSION="c9327dd55a3dd68f161eae0c5086b05d22abd116"
PKG_ARCH="any"
PKG_LICENSE="LGPL+MIT"
PKG_SITE="https://www.bootlin.com"
PKG_URL="https://github.com/bootlin/libva-v4l2-request.git"
PKG_GIT_CLONE_BRANCH="master"
PKG_SECTION="multimedia"
PKG_SHORTDESC="libva-v4l2-request"
PKG_LONGDESC="libva-v4l2-request"
PKG_TOOLCHAIN="autotools"

if [ "$DISPLAYSERVER" = "x11" ]; then
  PKG_DEPENDS_TARGET="toolchain libX11 libXext libXfixes libdrm"
elif [ "$DISPLAYSERVER" = "weston" ]; then
  PKG_DEPENDS_TARGET="toolchain libdrm wayland"
else
  PKG_DEPENDS_TARGET="toolchain libdrm libva"
fi

PKG_CONFIGURE_OPTS_TARGET=""
