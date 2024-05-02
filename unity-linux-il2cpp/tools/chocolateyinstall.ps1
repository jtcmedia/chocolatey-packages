$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4ff56b3ea44c/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.0f1.exe'
$checksum64     = 'cc519b2f78d00a1b07d8766a5a02b2da86c5aad3507068a578c2a7932d1a8abe'

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
