$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c7638eb16d91/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.2.3f1.exe'
$checksum64     = '6fd7015c7f3e928db24338ebf8e7801fac65b4ae09f5df641d44804e7d8f2f25'

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
