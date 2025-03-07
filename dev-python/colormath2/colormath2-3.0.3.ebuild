# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1

DESCRIPTION="Easy color scales and color conversion for Python"
HOMEPAGE="http://python-colormath.readthedocs.org/"
SRC_URI="https://github.com/bkmgit/python-colormath2/archive/${PV}.tar.gz -> ${P}.gh.tar.gz"

S="${WORKDIR}/python-colormath2-${PV}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/networkx[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest
