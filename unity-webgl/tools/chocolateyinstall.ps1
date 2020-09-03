$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fa717bb873ec/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.1.4f1.exe'
$checksum64     = '3682c48d35ce9597d2f85406bee15e8d6e99f976c4cc3fbdbc5736f8bb98b586'

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
