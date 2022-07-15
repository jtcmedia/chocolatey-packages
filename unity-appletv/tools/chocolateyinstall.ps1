$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/07e076b6d414/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.9f1.exe'
$checksum64     = '6886856c62654268bdc38d0fc9447489cd80c8598bc4c2e4e2959ca979009292'

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
