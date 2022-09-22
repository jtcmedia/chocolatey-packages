$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2d349551e475/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.1.17f1.exe'
$checksum64     = '8b478d20bf3c950d389aef371b3d2a17f7a394258e74a842f272aafb784317d3'

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
