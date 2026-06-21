

# Hybrid

**Hybrid** is a multi platform (Linux/Windows) Qt based frontend for a bunch of [other tools](http://www.selur.de/license) which can convert nearly every input to x264/x265/Xvid/VP9/AV1... + ac3/ogg/mp3/aac/flac inside an mp4/m2ts/mkv/webm/mov/avi container, a Blu-ray or an AVCHD structure.
(not supporting Mac OS any more since I don't own a Mac anymore)

**Hybrid is intended for advanced users.**
It doesn't aim to be a tool used by everybody.
If you don't know the basics about contains, video formats, etc. Hybrid is not meant for you.

**Here's a general feature list:**

* tagging support for mkv/mp4/mov
* chapter support for mkv/mp4/Blu-ray
* subtitle suppot for mkv/mp4/Blu-ray
* separated audio-, video-, filter profiles, audio&video combi profiles
* an integrated bitrate calculator
* accepts vc-1 and avc raw input
* manual&automatic creation&pass-through of chapters
* ability to encode single title/chapters
* a job-control
* aac/mp3/ac3/ogg/flac/dts/pcm audio encoding with dcaenc/mencoder/ffmpeg/aften and different aac encoders
* supported aac encoders: qaac, fdk, faac, fhg, neroaacenc
* filtering through mencoder (+ some resize automation) or avisynth if the 'avisynth extension' is used
* acceptable Input: avs and everything that mplayer/ffmpeg can decode
* supported video output formats: MPEG-4 ASP (Xvid), MPEG-4 AVC (x264, qsvencc, nvencc, vceencc, ffmpeg nvenc), VP8/VP9 (vpxenc), ProRes (ffmpeg), MPEG-4 HEVC (x265, kvazaar, DivX265, nvencc, qsvencc, vceencc, ffmpeg nvenc), FFV1 (ffmpeg), UT video (ffmpeg), FFvHuff (ffmpeg), AV-1 (aomenc, rav1e)
* supported audio output formats: dts, ac3, ogg vorbis, mp3, aac, flac, pcm, opus, pass-through
* supported containers: mov/mp4/mkv/m2ts/webm/avi, Blu-ray or a AVCHD structure
* audio/video pass-through -> can be used for muxing, tagging, chapter editing
* a lot of option to automate stuff

## Package Parameters

The following package parameters can be set:

 * `/NoDesktopIcon` - Don't add an icon to the desktop.

These parameters can be passed to the installer with the use of `-params`.
For example: `choco install nvidia-profile-inspector -params '"/NoDesktopIcon"'`.

## Maintainer's Note

I produce and maintain Chocolatey packages in my spare time, for free. If you use my packages, and appreciate the time and effort I put into making and maintaining them, please consider [making a small donation](https://www.buymeacoffee.com/jtcmedia). Thank-you!
