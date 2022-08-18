$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8f5fde82e2dc/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.3.38f1.exe'
$checksum64     = '5e36f26015520351f346788242f00b72329abeb326168edeaa08e011ff018d45'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
