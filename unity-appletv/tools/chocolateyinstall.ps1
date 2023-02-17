$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/660cd1701bd5/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.3.45f1.exe'
$checksum64     = 'e00f46548875b4efb9bc0bfa7eb477ccf10a0f02c6c19012f6d927f6a6e775ce'

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
