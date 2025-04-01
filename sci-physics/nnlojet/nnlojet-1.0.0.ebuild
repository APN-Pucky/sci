# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
CMAKE_MAKEFILE_GENERATOR="emake"

inherit cmake fortran-2 python-single-r1

DESCRIPTION="A parton-level event generator for jet cross sections at NNLO QCD accuracy"
HOMEPAGE="https://nnlojet.hepforge.org/"
SRC_URI="https://nnlojet.hepforge.org/nnlojet-v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-v${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="
	${PYTHON_DEPS}
	sci-physics/lhapdf
"
RDEPEND="${DEPEND}"


src_configure() {
	local mycmakeargs=(
		-DLHAPDF_ROOT_DIR="${ESYSROOT}/usr"
		-DOPENMP=ON
	)
	cmake_src_configure
}


