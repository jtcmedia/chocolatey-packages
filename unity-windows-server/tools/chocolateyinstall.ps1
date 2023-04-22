$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d535843d11e1/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.2.16f1.exe'
$checksum64     = 'cf59cbea8f4cf059d4ee5452e4d169e7e34551858babd937ee8875aff9b488e9'

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
