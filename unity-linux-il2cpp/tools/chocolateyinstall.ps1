$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/629111e352bc/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.19f1.exe'
$checksum64     = '961dd8733d5188df8e7b37120774db44ce738c2399a4975fb687570ba856e3de'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
