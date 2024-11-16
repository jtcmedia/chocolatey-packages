$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/27c554a2199c/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.27f1.exe'
$checksum64     = '9df34601491656b04ca4ddb91890dac7e0bd511b88a8f511c560385603951138'

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
