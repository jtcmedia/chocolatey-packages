$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9dce81d9e7e0/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.5f1.exe'
$checksum64     = 'f5d2e94a5f843727a3f639e889765916b51e73645011c68ea477c0eacfffca80'

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
