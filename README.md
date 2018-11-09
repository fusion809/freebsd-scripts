FreeBSD Scripts
==================

This repository contains several shell scripts that I have used to make
my life more convenient on my FreeBSD machine. They are presented here mostly for educational purposes. They are licensed under [GNU GPLv3](https://github.com/fusion809/freebsd-scripts/blob/master/LICENSE). All the files in this repository with the file extension `.sh` are stored in my `~/Shell` directory. While `.bashrc` is stored in my user directory, `~/`.

To quickly install this repo on your PC run:

```bash
sudo pkg install -y bash wget
/usr/local/bin/bash -c "$(wget -cqO- https://git.io/vPd0d)"
```

or:

```bash
sudo pkg install -y bash
/usr/local/bin/bash -c "$(curl -sL https://git.io/vPd0d)"
```

In the zfs-manual-install directory there is a [markdown file](https://github.com/fusion809/freebsd-scripts/blob/master/zfs-manual-install/README.md), along with three shell scripts that guide one through the process of manually installing FreeBSD on a self-setup ZFS file system. It is based on this [FreeBSD forum thread](https://forums.freebsd.org/threads/installing-freebsd-manually-no-installer.63201/) (I have archived it [here](https://web.archive.org/web/20181108194616/https://forums.freebsd.org/threads/installing-freebsd-manually-no-installer.63201/), in case the forum changes its location, or deletes it).
