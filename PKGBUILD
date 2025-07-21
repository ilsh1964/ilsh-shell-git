# Maintainer: Ilan Shavit <ilan.shavit@gmail.com>
pkgname=ilsh-shell-git
pkgver=1
pkgrel=2
pkgdesc="bash, zsh and fish shells configuration"
arch=('any')
url="https://github.com/ilsh1964/ilsh-shell-git"
license=('GPL3')
makedepends=('git')
source=("git+https://github.com/ilsh1964/ilsh-shell-git.git")
md5sums=('SKIP')

package() {
  cd "$srcdir/$pkgname"

  # Clean up VCS metadata if present
  rm -rf .git

  # Install files into /etc/skel/ilsh-shell-git
  install -d "$pkgdir"
  cp -a . "$pkgdir"
}
