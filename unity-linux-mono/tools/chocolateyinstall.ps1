$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/accd6d46ced1/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.4f1.exe'
$checksum64     = '89ad34660f92b719863fc1462f6827b83c1d53af4a4b37a024c421b5e288f42e'

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
