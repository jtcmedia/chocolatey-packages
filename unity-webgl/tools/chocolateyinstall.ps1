$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/22856944e6d2/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.1.13f1.exe'
$checksum64     = 'c55cedf043ee87cd4ca18bd4b6f61c63c06ee6eb981f1e0224be06ae829237b8'

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
