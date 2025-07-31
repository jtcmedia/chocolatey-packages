$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/db7aa045cc2c/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.1.14f1.exe'
$checksum64     = 'cc3482d5796f19ad9f381316bf63adddb8b84726270aef65e786342fdc91f5c0'

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
