$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5fa502fca597/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.16f1.exe'
$checksum64     = 'e8ea28d44ab367aaab8c1443339e18c874267391e4996d413face9d68afaabd2'

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
