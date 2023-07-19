$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/611a2ee54063/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.1.4f1.exe'
$checksum64     = '1184cc51527de96a18d1cf4e4488ab473ac7b7b5b3bdeca01604dacd719bb6dd'

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
