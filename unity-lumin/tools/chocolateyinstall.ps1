$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9957aee8edc2/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.1.17f1.exe'
$checksum64     = 'ac40dbd4396cb0f8c9b6c17ddfd5ed915f7066ef931ae638ba205325ba583eaf'

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
