$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/44796c9d3c2c/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.3.0f5.exe'
$checksum64     = 'a1dbe1b3a7e74105df4b6e7d15b9e1bb789efe92d0ffdc0cd526783c6e03a74f'

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
