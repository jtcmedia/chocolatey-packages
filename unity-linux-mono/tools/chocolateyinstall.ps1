$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0e0577a1a2ac/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.5.6f1.exe'
$checksum64     = 'aab0cec3b0e75d2a5946e17ab67d17304b704424cf3bbd711f91f648251c38d8'

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
