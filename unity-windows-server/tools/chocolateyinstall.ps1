$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/611a2ee54063/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.1.4f1.exe'
$checksum64     = 'ef7deeb0f910cd5746d03b7da78fe51f95705a0264759eea2d65cd034b11bac3'

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
