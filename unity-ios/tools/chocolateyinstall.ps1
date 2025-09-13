$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/17550c9bb584/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.4f1.exe'
$checksum64     = 'd8a01916706b6e1a9207df1bd7074e262c92745bd93d8f616eb946a78069514e'

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
