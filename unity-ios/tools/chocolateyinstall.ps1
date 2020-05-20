$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/2b330bf6d2d8/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.3.14f1.exe'
$checksum64     = '507d58a1b5085a4eb0f748704d876a3703c2fe5c47007f211b0e0ae82e3b4b97'

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
