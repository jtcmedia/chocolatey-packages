$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/88933597c842/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.2.17f1.exe'
$checksum64     = 'cdcec6df406902278ecf56373ea42d699065ef5627767d2ede4599b82c9ec800'

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
