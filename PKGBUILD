# Maintainer: Allan Niles allancoding.dev@gmail.com

pkgname=ascii-battleship
pkgver=1.4
pkgrel=1
pkgdesc="An ASCII Battleship game built in Java that can be played in the terminal."
url="https://github.com/allancoding/ascii-battleship"
license=('Apache-2.0')
depends=('java-runtime')
arch=('any')
source=("https://raw.githubusercontent.com/allancoding/ascii-battleship/main/Ascii_Battleship.jar")
sha256sums=('343545c852156d9affe69c0b0963ca49f7011405953362894fa603be91074c4b')
package() {
    install -d "${pkgdir}/usr/share/java/${pkgname}"
    install -Dm644 "${srcdir}/Ascii_Battleship.jar" "${pkgdir}/usr/share/java/${pkgname}/Ascii_Battleship.jar"
    echo "#!/bin/sh" > "${srcdir}/ascii-battleship.sh"
    echo "java -jar /usr/share/java/${pkgname}/Ascii_Battleship.jar" >> "${srcdir}/ascii-battleship.sh"
    chmod +x "${srcdir}/ascii-battleship.sh"
    install -Dm755 "${srcdir}/ascii-battleship.sh" "${pkgdir}/usr/bin/ascii-battleship"
}
