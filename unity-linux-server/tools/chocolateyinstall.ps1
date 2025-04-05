$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d91bd3d4e081/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.45f1.exe'
$checksum64     = '68ac3da8b38d7bbe4a6dc8c8d7006a75ae0432572008d3332e6ffb5a9820fd44'

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
