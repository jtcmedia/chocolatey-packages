$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a220877bc173/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.3.6f1.exe'
$checksum64     = 'fd456a129bd48092ab00fc0a92f1285100925a8f4e825f6a56c4509b14d763ec'

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
