$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ff7e140968b4/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.1.14f1.exe'
$checksum64     = 'e43f621d78b0ecf411fdf767ea59de75cd6a06d11e0d64a1706559ed5e267b64'

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
