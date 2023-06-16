$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a008fa768e6c/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.1.0f1.exe'
$checksum64     = '3e4b21c52e1a966108cd60c106cb501bc6d1489eece14c931eddfd92e3e28679'

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
