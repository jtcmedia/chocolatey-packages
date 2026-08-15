$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2ada23e432bd/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.6.0b8.exe'
$checksum64     = '943381b6ebf470114561cb42cb24161c503a675234a295e99c121e447fc4d625'

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
