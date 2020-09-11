$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e025938fdedc/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.1.5f1.exe'
$checksum64     = 'd8b5381221334b52af29b39f6b51198eb4ac685de88067dd3381fb1f9961d1cc'

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
