$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/feb9a7235030/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.42f1.exe'
$checksum64     = '532e4a8eb4e7687da9b8761b8a905b71f4466f3e291545eb7aec5b00a6529421'

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
