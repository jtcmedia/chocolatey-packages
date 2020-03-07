$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4f139db2fdbd/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2019.3.4f1.exe'
$checksum64     = '76ee033f1018db030177f5d81466043eb1881fffe7191f03ccb05cb53e432ecd'

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
