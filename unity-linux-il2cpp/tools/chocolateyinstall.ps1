$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/831263a4172c/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.15f1.exe'
$checksum64     = '12a2f40f3d33630bd135cfa816e3b67e5a5314bd72b69fdb7c71e9a92fd03ef1'

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
