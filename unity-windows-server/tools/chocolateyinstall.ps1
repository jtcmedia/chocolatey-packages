$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3699cf869f9b/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.18f1.exe'
$checksum64     = '3df0d5c0e167d675534561e738ea1f457543bd55fd331c02ca4df6657b4cd265'

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
