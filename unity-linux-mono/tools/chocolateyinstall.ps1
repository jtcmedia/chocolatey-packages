$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/09bebd6e9324/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.1.11f1.exe'
$checksum64     = 'b91790c6cba4860a4527d1f84df8954fd5c7e1767d66ec68da8f4a0dfbe9c820'

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
