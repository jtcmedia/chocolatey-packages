$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/974a9d56f159/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.1.10f1.exe'
$checksum64     = '713a9924a267f8829a9ace9cee8fbec385fef9d47211c03b999a1df2669da0df'

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
