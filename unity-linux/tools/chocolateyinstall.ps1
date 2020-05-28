$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/59ff3e03856d/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2019.3.15f1.exe'
$checksum64     = 'b8201a8f6c1ba5799f4fdc715ba14c14c579da83c45bb170621e7244850d6c97'

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
