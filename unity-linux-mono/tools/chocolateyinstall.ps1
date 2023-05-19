$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b805b124c6b7/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.3.48f1.exe'
$checksum64     = '65414261035e2cbf95670aa2431b320c08e12b55d742fb5a39a4054f8a501769'

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
