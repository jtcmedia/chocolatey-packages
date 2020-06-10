$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/0af376155913/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.4.0f1.exe'
$checksum64     = 'd2c345b198550619f9b5d0b6a5e23c4899c148aa40965182b656e081899035aa'

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
