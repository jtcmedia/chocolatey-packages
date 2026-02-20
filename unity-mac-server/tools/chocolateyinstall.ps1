$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f3f87a02ba54/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.4.0b8.exe'
$checksum64     = '85e853c2ed34930fe7898dc141e92dfb1b46954c43ecb569a7682cae32772312'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
