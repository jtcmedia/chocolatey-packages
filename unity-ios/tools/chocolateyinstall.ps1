$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9dce81d9e7e0/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.1.5f1.exe'
$checksum64     = '71f1e0a7a674824a277ff4666ef1976849d7a4b6771bf1712768f302fe71b019'

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
