$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6f7f9e1c9e8a/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.76f1.exe'
$checksum64     = '857c9faf8ac474acc65449c1fdf20ba2d19ee98576f0d24b7223988256b6e8b8'

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
