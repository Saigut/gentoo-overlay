# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Chez Scheme"
HOMEPAGE="https://cisco.github.io/ChezScheme"
SRC_URI="https://github.com/cisco/ChezScheme/archive/v${PV}.tar.gz"

LICENSE="Apache License 2.0"
SLOT="0"
KEYWORDS="~x86 ~x86_64"

src_configure() {
    econf
}

src_install() {
    emake DESTDIR="${D}" install

}