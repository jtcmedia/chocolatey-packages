$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/698c1113cef0/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.1.11f1.exe'
$checksum64     = 'aa149f91c6f331862ac67626d06622afee07c719e7308b599ee017e696cf61ca'

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
