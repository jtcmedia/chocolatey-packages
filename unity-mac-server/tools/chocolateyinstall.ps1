$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf0352b38e81/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.3.17f1.exe'
$checksum64     = '99890b72ca6669ed73e08c6786b56d5ab05b0c902393e73fec45ea7ff12d12d4'

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
