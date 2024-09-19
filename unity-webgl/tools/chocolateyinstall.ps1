$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88c277b85d21/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.47f1.exe'
$checksum64     = '64d64ce6bab8241264140eb93700374d236cd9e737a098b35efbd88669c5e7ea'

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
