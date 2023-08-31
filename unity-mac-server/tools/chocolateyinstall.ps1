$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fbf46ad88f3d/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.1.11f1.exe'
$checksum64     = 'f8b74cf2dbee99cf5f6965dcbe641aa9d2aa05e4c2ccf7c1f40edc7d310bbfc7'

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
