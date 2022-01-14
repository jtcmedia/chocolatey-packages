$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d0e5f0a7b06a/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.2.8f1.exe'
$checksum64     = 'f828057616d3e14dda07f96e399cd48a7f63acec3230414670f4214b712d6302'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
