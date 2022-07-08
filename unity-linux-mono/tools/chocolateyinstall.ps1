$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2961e8c2b463/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.1.8f1.exe'
$checksum64     = 'd6325bb49be17ed2c7fa77cabc236191712df93a07965a9b2d687e8613cebf24'

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
