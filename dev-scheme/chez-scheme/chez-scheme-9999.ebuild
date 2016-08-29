# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils git-r3

DESCRIPTION="Chez Scheme"
HOMEPAGE="https://cisco.github.io/ChezScheme"

EGIT_REPO_URI="https://github.com/cisco/ChezScheme.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"

src_configure() {
	./configure --installprefix=/usr --installman=/usr/share/man --datadir=/usr/share
}

src_install() {
	emake DESTDIR="${D}" install

}