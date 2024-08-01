$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cbdda657d2f0/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.40f1.exe'
$checksum64     = 'af559a1855cbfc71e05c59833bc47cb87caf1bbeae93eb8f7cdd3ebe0af00654'

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
