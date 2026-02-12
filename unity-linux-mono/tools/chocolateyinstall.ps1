$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1c7db571dde0/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.3.8f1.exe'
$checksum64     = '40b9062ad9fca31cecc36404266c2e5697806bd9cff41da78f389bf3a66e6d15'

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
