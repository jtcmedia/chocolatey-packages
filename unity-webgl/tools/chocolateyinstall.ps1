$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d17678da8412/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.2.0b1.exe'
$checksum64     = 'd532ce5fa9bef0deda1deb0fe9f14f436888f4bc496bdef3797a6b8d25c609ec'

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
