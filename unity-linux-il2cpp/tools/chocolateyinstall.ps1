$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/db7aa045cc2c/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.1.14f1.exe'
$checksum64     = 'b4fcc4a06cc1b14b494b383941a16b13ac47640786af14c79252400874f56566'

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
