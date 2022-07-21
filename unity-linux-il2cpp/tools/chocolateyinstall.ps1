$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9aa0f82c4f96/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.10f1.exe'
$checksum64     = '47b6ac86c1f697661a7ccff7538650755fac7016ff51b0da58d468f5923ddbde'

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
