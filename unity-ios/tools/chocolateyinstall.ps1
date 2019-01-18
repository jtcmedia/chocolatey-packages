$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b3c100a4b73a/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.3.2f1.exe'
$checksum64     = '82bc6fe8a1071c65bd5fc472c3d8c3d3a0145fbb2e70c8c9e9191f5a59ef02c1'

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
