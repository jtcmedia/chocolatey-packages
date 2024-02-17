$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/316c1fd686f6/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.2.10f1.exe'
$checksum64     = 'd2eebf78ae2e97f0c19bcacd8c993af72b07519f10413934b054a9d8a4e7225f'

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
