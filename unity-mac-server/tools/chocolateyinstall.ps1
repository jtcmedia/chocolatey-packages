$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/577897200b8b/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.20f1.exe'
$checksum64     = '374242e2354cf2447f1c01a942010e0def307e17258b6734454f83c6e909159e'

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
