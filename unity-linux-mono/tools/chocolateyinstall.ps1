$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4504a57e80f0/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.0b3.exe'
$checksum64     = 'a3f7b055b249496a8fd9a4ae14590ffc1e82612044727ea37ca7941b3ae749b9'

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
