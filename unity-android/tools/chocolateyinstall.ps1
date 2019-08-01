$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/20c1667945cf/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.2.0f1.exe'
$checksum64     = '2227967d622ad1ccd79af2a22056c104336f674e11714e517d8f8e155a2c806d'

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
