pkgname=fuzzy-cd
pkgver=1.0.1
pkgrel=1
epoch=
pkgdesc="Showy directory changer powered by fzf"
arch=("any")
url="https://github.com/cameron-wags/fuzzy-cd"
license=("MIT")
depends=("fzf")
source=("$pkgname-$pkgver.tar.gz::$url/archive/refs/tags/$pkgver.tar.gz")
md5sums=('e908c09b4ccfbb3f7f1158ce55312154')

package() {
    cd "$pkgname-$pkgver"
    install -Dm 755 ./fuzzy-cd.sh -t "$pkgdir/usr/share/fuzzy-cd"
}
