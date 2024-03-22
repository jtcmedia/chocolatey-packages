$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/887be4894c44/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.22f1.exe'
$checksum64     = 'c50a56281facd3a205b2ab4407e3ec5b35a21d1559f97f8d9705180371809349'

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
