$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/d691e07d38ef/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.3.5f1.exe'
$checksum64     = '266ccb48fd15ab53cdd2f445a72320ed4b0a02605655a9deda5c66786a2f4a04'

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
