$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/292b93d75a2c/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.1.0f2.exe'
$checksum64     = 'db2a313b7b0e9d983a8e416459174dfa57b96955108b97b3b47bd03dcbb6fa53'

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
