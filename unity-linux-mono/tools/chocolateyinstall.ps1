$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0707b6d1e918/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.15f1.exe'
$checksum64     = 'e6952f809b526a5b928442a201c6064816bbbf9b6fb62971b32f5b7913c4d8a4'

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
