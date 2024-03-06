$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/19eeb3b320af/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.2.12f1.exe'
$checksum64     = '74529c744408516105664f1d730959f021f68690074637f0cd412e5ea0eddcfd'

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
