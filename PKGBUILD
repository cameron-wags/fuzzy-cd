pkgname=fuzzy-cd
pkgver=1.0.2
pkgrel=1
epoch=
pkgdesc="Showy directory changer powered by fzf"
arch=("any")
url="https://github.com/cameron-wags/fuzzy-cd"
license=("MIT")
depends=("fzf")
source=("$pkgname-$pkgver.tar.gz::$url/archive/refs/tags/$pkgver.tar.gz")
md5sums=('528a285e22978be8c0634b9eb77a3b92')

package() {
    cd "$pkgname-$pkgver"
    install -Dm 755 ./fuzzy-cd.sh -t "$pkgdir/usr/share/fuzzy-cd"
}
