$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/270dd8c3da1c/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.2.1f1.exe'
$checksum64     = '3748020f80a617128ee38f9336c175860b154e969588e708d20efbc3e172c03a'

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
