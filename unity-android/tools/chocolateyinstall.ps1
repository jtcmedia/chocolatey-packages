$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2ada23e432bd/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.6.0b8.exe'
$checksum64     = '29c50a7a886a5c9c874df8e791836c14b635243dbc999125af0cd858d419f6ab'

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
