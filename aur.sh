#!/bin/bash
cd ascii-battleship
makepkg --printsrcinfo > .SRCINFO
git add PKGBUILD .SRCINFO
git commit -m "{$1}"
git push aur
