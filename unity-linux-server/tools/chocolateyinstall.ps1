$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/53a692e3fca9/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.13f1.exe'
$checksum64     = 'f8205d6b58caf23d6e6d7b628a211251fe39a466be61ee03c35147872af126b6'

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
