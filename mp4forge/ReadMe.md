

# Mp4Forge

A modern MP4 muxing tool with a desktop GUI interface, powered by MP4Box.

## Features

- **Multi-track support**: Add multiple video, audio, subtitle, and chapter tracks to a single MP4 container
- **Multi-track MP4 audio selection**: Select specific audio tracks from MP4 files containing multiple audio streams
- **Language & metadata**: Set language codes, titles, default/forced flags for all tracks
- **Audio delay**: Support for audio delay values (automatically detected from filenames or MediaInfo)
- **Chapter support**: Import chapters from OGM/XML files or other MP4 containers
- **Queue system**: Build and manage multiple muxing jobs in a queue
- **Cross-platform**: Available for Windows (8+ x64), macOS, and Linux
- **Theme support**: Light, dark, and auto themes
- **Quick access titles**: Save and use quick access titles for audio/subtitles

### Supported Formats

**Video**: H.264/AVC, H.265/HEVC, MP4/M4V  
**Audio**: AAC, AC3, E-AC3, MP2, MP3, Opus, OGG, MP4/M4A (with multi-track selection)  
**Subtitles**: SRT, SSA, ASS, VTT, MP4/M4V  
**Chapters**: OGM, XML, MP4 (extracted from existing files)  
**Output**: MP4 container only

## Package Parameters

The following package parameters can be set:

 * `/NoDesktopIcon` - Don't add an icon to the desktop.

These parameters can be passed to the installer with the use of `-params`.
For example: `choco install nvidia-profile-inspector -params '"/NoDesktopIcon"'`.

## Maintainer's Note

I produce and maintain Chocolatey packages in my spare time, for free. If you use my packages, and appreciate the time and effort I put into making and maintaining them, please consider [making a small donation](https://www.buymeacoffee.com/jtcmedia). Thank-you!

