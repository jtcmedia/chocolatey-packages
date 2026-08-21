$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a9845a6430b3/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.6.0b9.exe'
$checksum64     = 'bac3a9d404d7199cd3a6a0d9a6c6d9244e46e7d522f18c3cdc520c73fa3e70f8'

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
