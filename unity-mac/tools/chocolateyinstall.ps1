$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/55b56f0a86e3/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.1.12f1.exe'
$checksum64     = '62a0f458d8b1e35d135241dd3e3c2df08a88878e523df5b9ece6acbf9e9fd008'

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
