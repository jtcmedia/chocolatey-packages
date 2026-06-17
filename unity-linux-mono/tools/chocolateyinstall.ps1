$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5ebeb53e4c07/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.3.18f1.exe'
$checksum64     = '9254217c5716b766b3ad9db8ac6f71176f0386631b64f069da38a73b84e57463'

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
