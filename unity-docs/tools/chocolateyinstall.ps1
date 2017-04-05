$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/497a0f351392/WindowsDocumentationInstaller/UnityDocumentationSetup-5.6.0f3.exe'
$checksum       = 'beed003da7e88c3b475fd6a00057bef1f355aee8765539b0a3cb68ac0b8cd4d4'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
