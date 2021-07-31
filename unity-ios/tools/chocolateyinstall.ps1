$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5fa502fca597/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.1.16f1.exe'
$checksum64     = '96fc3a8bfac3b8a54ebab546d9b533ce41a82107d48cef993aac65d9d93b26ce'

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
