$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9427c1534183/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.1.2f1.exe'
$checksum64     = 'c5947eb95414651f9cecc21d8bb03b1cf6951b2b25b0b6dd0b625882c0c5c2c5'

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
