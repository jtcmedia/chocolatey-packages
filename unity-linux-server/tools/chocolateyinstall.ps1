$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/76dd1f94b339/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.4f1.exe'
$checksum64     = '155245fe5216e76e6ab1ec4505c3506ce99314b8f5b0e5a05d43610cc006fc40'

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
