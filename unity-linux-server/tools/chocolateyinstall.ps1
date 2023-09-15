$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ffeab063bb93/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.13f1.exe'
$checksum64     = 'dd0cd6d5d456e705f08f08af49daa1d6f3961db3e665a96742dc6c60351b0b1e'

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
