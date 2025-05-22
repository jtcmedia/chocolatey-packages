$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/03270eb687c6/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.1.4f1.exe'
$checksum64     = '4f8acbf56828f57384a1b70eb314f7950714de1721b5fc67d476337070f03ae6'

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
