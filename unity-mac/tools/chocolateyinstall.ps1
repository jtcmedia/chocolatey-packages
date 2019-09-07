$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c63b2af89a85/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.2.4f1.exe'
$checksum64     = '727d0ffcf3c9f875d10a0cc01282a338546b836fb1db9168d4dc0ef509e51b34'

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
