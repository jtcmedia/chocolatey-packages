$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7a790e367ab3/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.9f1.exe'
$checksum64     = '28f81f8afad971a2085ff2d4e280ddb1d551922f29ed351a99197876ee480afe'

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
