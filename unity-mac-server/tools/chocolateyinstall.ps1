$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/01d83b40d570/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.1.20f1.exe'
$checksum64     = '1c6eb7d9884de319f11d86b9d3bf9688f9e4a08cd5ec18e4326512dd1df48b4a'

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
