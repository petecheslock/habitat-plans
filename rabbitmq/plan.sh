pkg_name=rabbitmq
pkg_origin=pete
pkg_version=3.6.2
pkg_maintainer="Pete Cheslock <petecheslock@gmail.com"
pkg_license=('rabbitmq')
pkg_source=http://www.rabbitmq.com/releases/rabbitmq-server/v${pkg_version}/rabbitmq-server-generic-unix-${pkg_version}.tar.xz
pkg_shasum=2de3b0c93ed6ae009648c855253602402246a0ae06e6aefa60637673fa8aa112
pkg_filename=rabbitmq-server-generic-unix-${pkg_version}.tar.xz
pkg_dirname=${pkg_name}_server-${pkg_version}
pkg_deps=(core/sed core/coreutils core/erlang/18.3)

do_build() {
  return 0
}

do_install() {
  cp -r $HAB_CACHE_SRC_PATH/${pkg_dirname}/* ${pkg_prefix}
  #for DIR in ebin etc include plugins sbin share;
    #do cp -r $HAB_CACHE_SRC_PATH/${pkg_dirname}/$DIR ${pkg_prefix};
  #done
}
