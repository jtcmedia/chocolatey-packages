$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cb755715f58/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.2.18f1.exe'
$checksum64     = 'f3e27b7776bb613b7cd181e42e74ed53be332611d9e8203797b37e9cce50f3b0'

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
