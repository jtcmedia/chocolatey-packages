

### About

StaxRip is a powerful video encoding GUI for Windows.  
It executes and controls console apps like x265, mkvmerge and ffmpeg and uses the scripting based frame servers AviSynth+ and VapourSynth for video processing.

***StaxRip is no One-Click-Encoder!***  
Due to its possibilities, StaxRip forces you to know what you want to achieve and how to set up the options.
Especially at the beginning you have to learn the settings and maybe do some tests to learn how StaxRip works and what is possible. That being said, StaxRip also offers you an assistant that takes care of your settings and changes.

When you struggle, there are multiple ways to get help from the community.

### Documentation

You can find various information and instructions on [Wiki](https://github.com/staxrip/staxrip/wiki) and on [ReadTheDocs](https://staxrip.readthedocs.io/index.html).

#### Usage questions

- Usage questions can be asked on the *StaxRip threads* on
  - [VideoHelp](https://forum.videohelp.com/threads/369913-StaxRip-support-thread) 
  - [Doom9](https://forum.doom9.org/showthread.php?t=172068)
- Feel also free to join the user chat on [Discord](https://discord.gg/rRn7vGU).

## Package Notes

This package now installs a shim so that `staxrip.exe` in `$($env:ChocolateyInstall)\bin` will always be the latest StaxRip version.

The following package parameters can be set:

- `/NOICON` - Do not install a Desktop Icon

To pass parameters, use `--params "''"` (e.g. `choco install packageID [other options] --params="'/ITEM:value /ITEM2:value2 /FLAG_BOOLEAN'"`).
To have choco remember parameters on upgrade, be sure to set `choco feature enable -n=useRememberedArgumentsForUpgrades`.

## Maintainer's Note

I produce and maintain Chocolatey packages in my spare time, for free. If you use my packages, and appreciate the time and effort I put into making and maintaining them, please consider [making a small donation](https://www.buymeacoffee.com/jtcmedia). Thank-you!
