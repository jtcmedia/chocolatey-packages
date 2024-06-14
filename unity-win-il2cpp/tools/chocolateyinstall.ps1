$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/17028576122a/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.5f1.exe'
$checksum64     = '373d22486316361149c4b76808c1cd01926a44ae9ec18916ac3528a52e3d37ad'

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
