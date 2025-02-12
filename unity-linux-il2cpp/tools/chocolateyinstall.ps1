$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ed7f6eacb62e/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.58f1.exe'
$checksum64     = 'd10897117b57c8a3a0a378d0d22f5d8cdfd372a4f8052de7392ad37a487f4654'

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
