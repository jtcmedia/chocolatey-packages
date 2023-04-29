$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/54cb9bda89c4/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.17f1.exe'
$checksum64     = '9cda3329f4c11baef7674167cec92aa0d07d1ec00aa2ae64f5c507407930672e'

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
