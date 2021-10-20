

# Unity

## Features

#### Multiplatform game engine (Note: Need to install separate package for some Target Platforms)

* Android, iOS, Windows Store, Tizen
* PC, MacOS, Linux
* WebGL
* PlayStation 4, PlayStation Vita, Xbox 360, Xbox One, Wii U, Nintendo 3DS
* Oculus Rift, Google Cardboard, PlayStation VR, Gear VR, Microsoft Hololens
* Android TV, Samsung SMART TV, tvOS

#### General

* Scripting with C#, JavaScript
* Debugging with IDE MonoDevelop and Visual Studio
* Make game with Editor. Fully Extendible Editor.
* 2D/3D physics (NVIDIA PhysX 3™ and Box2D)
* Native Code Plugin Support

#### Animation

* Integrated Animation Editor
* Blend Trees
* Inverse Kinematics
* State Machines
* Sync Layers and Additional Curves

#### Graphics

* Sprite Packer
* Physically-Based Shading
* Low-Level Rendering Access
* Shuriken Particle System
* Dynamic Fonts with Markup
* Enlighten-powered Real-time Global Illumination
* Static Batching
* Dynamic Batching
* Level of Detail
* GPU Skinning for DirectX 11 and OpenGL ES 3.0
* Deferred Rendering

#### Audio

* Hierarchies of mixers
* Native Audio Plugins
* Transition the mood of your soundscape

#### Services

* Asset store
* Collaborate
* Cloud builds
* Analytics
* Performance reporting
* Ads
* Multiplayer
* Everyplay
* Certification

#### Other

* DLC: Assets Bundle
* External Version Control Support
* Multiplayer Networking with RakNet
* .NET Socket Support
* iOS Crash Reporter
* Terrains
* NavMeshes and Path-Finding
* Integrated SpeedTree support
* Command-line interface

#### Supported formats

* Images: png, bmp, tif, tga, jpg, psd
* 3D formats: fbx, dae, 3DS, dxf, obj, max, mb, ma, blend
* Audio: mp3, ogg, wav, aif, mod, it, s3m, xm
* Movie: mov, mpg, mpeg, mp4, avi, asf

## Package Parameters

The following package parameters can be set:

 * `/InstallationPath:` - Where to install the editor. **Path must already exist.** - defaults to "`C:\Program Files\Unity`"

To pass parameters, use `--params "''"` (e.g. `choco install unity [other options] --params="'/InstallationPath:D:\Unity'"`).

To have choco remember parameters on upgrade, be sure to set `choco feature enable -n=useRememberedArgumentsForUpgrades`.

## Notes

If you're a company and using Unity Personal, you must meet the following criteria:

* Do not make more than $100k in annual gross revenues, regardless of whether Unity Personal is being used for commercial purposes, or for an internal project or prototyping.

* Have not raised funds in excess of $100K.

* Not currently using Unity Plus or Pro.

## Maintainer's Note

I produce and maintain Chocolatey packages in my spare time, for free. If you use my packages, and appreciate the time and effort I put into making and maintaining them, please consider [making a small donation](https://www.buymeacoffee.com/jtcmedia). Thank-you!
