$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3721df5a8b28/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.2.0f1.exe'
$checksum64     = 'f805429f3958561ed9c5dcba1fc0f6ab780a07ff40093ccb474a2556eea793c0'

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
