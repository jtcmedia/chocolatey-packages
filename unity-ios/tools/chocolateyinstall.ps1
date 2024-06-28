$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/011206c7a712/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.35f1.exe'
$checksum64     = '0acaf1179e9cfbfac5c9c0c178df12b6a1d5ba6d86bb76c10ef864af7b1a6eec'

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
