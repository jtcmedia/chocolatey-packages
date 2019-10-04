$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ff5b465c8d13/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.2.8f1.exe'
$checksum64     = 'ee923ccdc3210d4e290e6da09373d324e206a7ef8350a8c6bcd14b005d3855f4'

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
