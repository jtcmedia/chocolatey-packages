$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5fa502fca597/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.16f1.exe'
$checksum64     = 'bbe2db64c97a8de70181eb64181396ab0c5ced01b31fac59dc1e7607355e36ff'

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
