$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88f89d0d8b31/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.77f1.exe'
$checksum64     = '4577cac1e38357aec0c4c4e5a1564eaa6327f409bb7fbbf480d1241fedd703ad'

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
