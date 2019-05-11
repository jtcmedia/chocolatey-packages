$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3e18427e571f/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.1.2f1.exe'
$checksum64     = '6b9f4a26cd562cc8e7fabf2457b722e7874d7a4cf62ec9f3227e05c0e232d913'

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
