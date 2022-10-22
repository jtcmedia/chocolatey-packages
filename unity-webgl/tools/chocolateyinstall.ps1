$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7c19dc9acfda/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.3.41f1.exe'
$checksum64     = 'c340dd779a68e0c7be84c0755c0e92d6281d8029b26e24006d661a5c08012048'

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
