$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/74a0adb02c31/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.61f1.exe'
$checksum64     = '10ad5212e16edce26df0894d68996d8ad23b951b2d0167174ef6c723b932823f'

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
