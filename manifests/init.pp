# Class: repos
#
# This class installs REDHAWK Yum repos
#
# Parameters:
#
# Actions:
#   - Install REDHAWK Yum repos
#
# Requires:
#
# Sample Usage:
#
class repos (
) {
  yumrepo { "redhawk-1.9":
    baseurl  => "http://master/yum/redhawk-1.9.0/el6/$architecture",
    descr    => "REDHAWK 1.9.0 Release",
    enabled  => 1,
    gpgcheck => 0,
  }
  yumrepo { "redhawk-deps":
    baseurl  => "http://master/yum/redhawk-deps/el6/$architecture",
    descr    => "REDHAWK Dependencies",
    enabled  => 1,
    gpgcheck => 0,
  }
  yumrepo { "myNodes":
    baseurl  => "http://master/yum/myNodes/el6/noarch",
    descr    => "Custom Node RPMs",
    enabled  => 1,
    gpgcheck => 0,
  }
  yumrepo { "epel":
    mirrorlist  => "https://mirrors.fedoraproject.org/metalink?repo=epel-6&arch=$architecture",
    descr    => "CentOS 6 EPEL Repository",
    enabled  => 1,
    gpgcheck => 0,
  }
}
