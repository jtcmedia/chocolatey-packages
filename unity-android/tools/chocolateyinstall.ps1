$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4ec9a5e799f5/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.2.5f1.exe'
$checksum64     = '43e40d511e04c8964f65eb3d61c332864c03c0956649985d7ddb898eef6ef959'

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
