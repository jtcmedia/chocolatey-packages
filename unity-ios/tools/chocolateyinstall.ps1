$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/35dcd44975df/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.2.0f1.exe'
$checksum64     = '42bee85e9abb4c227fafe8fc6d582682aa4b0e46bae3433a4ea89ce4217bd10f'

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
