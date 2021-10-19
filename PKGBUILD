pkgname=fuzzy-cd
pkgver=1.0.0
pkgrel=1
epoch=
pkgdesc="Showy directory changer powered by fzf"
arch=("any")
url="https://github.com/cameron-wags/fuzzy-cd"
license=("MIT")
depends=("fzf")
source=("$pkgname-$pkgver.tar.gz::$url/archive/refs/tags/$pkgver.tar.gz")
md5sums=('57aa844f9129eb51e592d7ecfeb20eed')

package() {
    cd "$pkgname-$pkgver"
    install -Dm 755 ./fcd -t "$pkgdir/usr/bin/"
}
