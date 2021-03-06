# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

ROS_REPO_URI="https://github.com/ros/ros"
KEYWORDS="~amd64 ~arm"
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )
ROS_SUBDIR=core/${PN}

inherit ros-catkin

DESCRIPTION="Base dependencies and support libraries for ROS"
LICENSE="BSD"
SLOT="0"
IUSE=""

RDEPEND="
	>=dev-python/rospkg-1.0.37[${PYTHON_USEDEP}]
	dev-libs/boost:=[threads]
	dev-ros/rospack
"
DEPEND="${RDEPEND}
	test? (
		dev-cpp/gtest
		dev-python/nose[${PYTHON_USEDEP}]
	)"
