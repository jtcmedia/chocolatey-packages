$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0d9463e84828/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.5.1f1.exe'
$checksum64     = 'd7d72cf5125c680bd075a9a4f9df3052b106e0fa49c262e17ef7a0281c863102'

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
