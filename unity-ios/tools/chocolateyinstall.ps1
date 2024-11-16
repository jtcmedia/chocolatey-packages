$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/27c554a2199c/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.27f1.exe'
$checksum64     = 'c66f583079c8bfa3f381f026caf3e741d35038c77fe66a75cf38a09781600ef4'

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
