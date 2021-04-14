$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4bef613afd59/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.3f1.exe'
$checksum64     = '4cdcef239d8a38354ad6c6a11b2a3e492c29155ea3771c2ce00d2d9a2dcd7c4f'

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
