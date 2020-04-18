

# PiBakery

The blocks based, easy to use setup tool for Raspberry Pi

![PiBakery demo screen](http://pibakery.org/img/blocks-on-workspace.png#2)

PiBakery is a a blocks based drag and drop tool that allows you to customise and edit your Raspberry Pi without powering the Pi on. Simply insert your SD card into your computer, choose which features you want on your Pi, and hit **Write**. PiBakery will write the latest version of Raspbian to your SD card, with your customisations added too.

For more information see www.PiBakery.org or follow [@PiBakery](http://twitter.com/PiBakery) on Twitter.

---

# PiBakery v2
The latest version of PiBakery, *PiBakery v2*, is a complete re-write of the original application, with many additional features, including:

- PiBakery no longer bundles .img files in the installer/program. Instead, the user must supply their own Raspbian .img file. This means that any Raspbian-based .img can be used, with the possibility of other distros in the future
- Ability to edit **any** Raspbian SD card, not just ones that have been written with PiBakery
- More robust Linux support
- Ability to add multiple block sources, so the user can maintain their own block repo with their own custom blocks
- Importing of recipes (.xml files) created with older versions of PiBakery no longer fail, instead they are converted automatically into the new format
- The entire program no longer runs as root/admin. Instead, just the writer process is elevated when needed to be
- Modularised code to increase readability, and add option for command line mode in the future

# Legal

PiBakery is Copyright (c) 2018 David Ferguson, and is licenced under the GNU General Public License version 3 or later; please see the file `COPYING` for details.

This project uses and distributes a binary of [Busybox](https://busybox.net) version 1.27.2 taken from Raspbian Stretch's [`busybox-static`](https://archive.raspbian.org/raspbian/pool/main/b/busybox/busybox-static_1.27.2-3_armhf.deb) package, the source code of which can be found [here](https://archive.raspbian.org/raspbian/pool/main/b/busybox/).

## Package Parameters

The following package parameters can be set:

 * `/NoDesktopIcon` - Don't add an icon to the desktop.

These parameters can be passed to the installer with the use of `-params`.
For example: `choco install pibakery -params '"/NoDesktopIcon"'`.
