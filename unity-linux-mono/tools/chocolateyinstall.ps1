$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d36222f39966/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.5.0a8.exe'
$checksum64     = '1b811ae89522352f035a39a45dfbb87181e1ae31fd9e2b8020da09ee592d5f87'

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
