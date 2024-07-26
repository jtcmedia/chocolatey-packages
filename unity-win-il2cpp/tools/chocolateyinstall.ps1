$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7defd84cdab8/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.12f1.exe'
$checksum64     = '903e297ca9885311d7dd5ea7fdbcc993e0e728c21764c3ad07bf2b8b2c45e304'

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
