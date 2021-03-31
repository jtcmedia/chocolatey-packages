$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6fdc41dfa55a/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.1f1.exe'
$checksum64     = 'c5203e3a29e06a872753212788c6f218edd4d49bfd6fd503a8617aafafd426a8'

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
