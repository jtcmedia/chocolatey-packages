$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/19eeb3b320af/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.2.12f1.exe'
$checksum64     = '98ac9d210ab45ef4fc0df6dff907f62f9ca61b7f5afd7630483b42217e502f42'

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
