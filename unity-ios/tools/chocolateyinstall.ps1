$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/369b620af41c/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.1.0f1.exe'
$checksum64     = '8bdb525b7d1933584fd83d3aaaeee3700be5f53f5fe2e6faaf23356fa96ebde9'

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
