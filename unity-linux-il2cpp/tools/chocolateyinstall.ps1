$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c0fade0cc7e9/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.6f1.exe'
$checksum64     = '1b96019e108c610cc90ab2bc03e5efe09eb0497065e4566dd10e9c2b941cc9ac'

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
