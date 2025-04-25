$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9ea152932a88/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.1.0f1.exe'
$checksum64     = '739ff9f99eceaa5283d840f499dc9e87e2771bb5cb5926feb03b50c2a1fba54f'

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
