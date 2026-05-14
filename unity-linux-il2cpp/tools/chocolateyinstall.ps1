$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/26349cd2a5c8/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.75f1.exe'
$checksum64     = '358646ca882fbd4a605044faa7032eb38d0040930456a7ed80696d1198a3468b'

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
