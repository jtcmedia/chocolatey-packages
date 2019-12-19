$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/8e603399ca02/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.2.17f1.exe'
$checksum64     = '935bd0f5379930c07dd367e4e8e73f8fa0f3e96c1a5dcfcb9e8b321955363085'

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
