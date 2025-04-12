$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb93bc360d3a/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.46f1.exe'
$checksum64     = 'b9b66a06e043f10b55637ac24c48d98df7ae9ae7cb89d5df89fac1f05b11da91'

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
