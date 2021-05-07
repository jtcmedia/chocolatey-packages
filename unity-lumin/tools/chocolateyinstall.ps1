$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c0fade0cc7e9/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.6f1.exe'
$checksum64     = '1cd10f1f86f22168fd2dc9ddbaadc63a9b67248b2f4595bea4f04847eac350ba'

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
