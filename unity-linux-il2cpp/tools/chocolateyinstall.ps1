$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4fead5835099/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.2.1f1.exe'
$checksum64     = '8589f2b9b9722fa57abb82091f6e9a2fcd6d3d25a944b01ad81bdf005ac930e7'

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
