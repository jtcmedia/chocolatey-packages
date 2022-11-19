$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eee1884e7226/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.3.14f1.exe'
$checksum64     = 'b073864555a0b268a4f628c0c75acdebe85bfcf326a09bebaf7605485835f41e'

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
