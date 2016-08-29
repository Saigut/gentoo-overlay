# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit eutils distutils-r1 git-2

DESCRIPTION="Chez Scheme"
HOMEPAGE="https://cisco.github.io/ChezScheme"

EGIT_REPO_URI="https://github.com/cisco/ChezScheme.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"

src_configure() {
	econf
}

src_install() {
	emake DESTDIR="${D}" install

}