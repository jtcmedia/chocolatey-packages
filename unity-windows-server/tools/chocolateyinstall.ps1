$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/559fc0ec6670/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.2.16f1.exe'
$checksum64     = 'fadef390d19e6fa150af718e91a060a4800866915dabac27e23d5148bb801193'

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
