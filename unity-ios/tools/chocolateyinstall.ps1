$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/244b723c30a6/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.19f1.exe'
$checksum64     = 'd6cbed11515dc53c78e5bb8c6637db2f524fc05e38f315ece170551b4cc1215d'

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
