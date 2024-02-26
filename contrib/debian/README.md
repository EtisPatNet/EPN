
Debian
====================
This directory contains files used to package etispatnetd/etispatnet-qt
for Debian-based Linux systems. If you compile etispatnetd/etispatnet-qt yourself, there are some useful files here.

## etispatnet: URI support ##


etispatnet-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install etispatnet-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your etispatnet-qt binary to `/usr/bin`
and the `../../share/pixmaps/etispatnet128.png` to `/usr/share/pixmaps`

etispatnet-qt.protocol (KDE)

