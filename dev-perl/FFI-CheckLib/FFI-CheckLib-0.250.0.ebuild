# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DIST_AUTHOR=PLICEASE
DIST_VERSION=0.25
DIST_EXAMPLES=("example/*")
inherit perl-module

DESCRIPTION="Check that a library is available for FFI"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~riscv ~x86"
IUSE="test"

RDEPEND="
	virtual/perl-Module-Load
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		>=virtual/perl-Test-Simple-1.302.15
		>=dev-perl/Test2-Suite-0.0.60
	)
"
