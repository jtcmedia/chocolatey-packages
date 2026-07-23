$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b5238eaafb35/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.6.0b5.exe'
$checksum64     = '0cb53a9a9a9add8ec8fca91a76caa4a7793cd8e67f815dee8128a49415998d90'

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
