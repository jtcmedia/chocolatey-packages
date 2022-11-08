$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9e7d58001ecf/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.13f1.exe'
$checksum64     = '92b93fe9d2365afa277ce6e0378855420d97c149ab75f4ca3905466f641742a1'

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
