pkg_name=rabbitmq
pkg_distname=$pkg_name
pkg_origin=pete
pkg_version=3.6.2
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=('rabbitmq')
pkg_source=http://www.rabbitmq.com/releases/rabbitmq-server/v${pkg_version}/rabbitmq-server-generic-unix-${pkg_version}.tar.xz
pkg_shasum=2de3b0c93ed6ae009648c855253602402246a0ae06e6aefa60637673fa8aa112
pkg_filename=rabbitmq-server-generic-unix-${pkg_version}.tar.xz
pkg_dirname=${pkg_distname}_server-${pkg_version}
pkg_deps=(core/erlang/18.3)
pkg_build_deps=()
pkg_bin_dirs=(sbin)
pkg_lib_dirs=(lib)
pkg_include_dirs=(include)

do_build() {
  return 0
}

do_install() {
  cp -r $HAB_CACHE_SRC_PATH/$pkg_dirname/* $pkg_prefix
}
