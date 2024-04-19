$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/530ae0ba3889/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.25f1.exe'
$checksum64     = '3b24f8f1a957f623c5b637bc8bb57c3700ab8f681f405887e799238fe1fad148'

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
