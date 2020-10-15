$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/145f5172610f/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.1.9f1.exe'
$checksum64     = 'd2b52879d2df21be0e22e4a535b9c867844b8bd7c5d1cace94f5a97497a61994'

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
