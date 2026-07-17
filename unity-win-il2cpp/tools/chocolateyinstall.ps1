$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c9ba695d4f07/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.3.20f1.exe'
$checksum64     = 'b3ab49a9c0b07d75d6fe41359f44a12f4f5e9e34c9182dd736deb8411bd8f68d'

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
