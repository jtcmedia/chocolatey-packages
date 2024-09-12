$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8e9b8558c41a/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.46f1.exe'
$checksum64     = '0b1c679de7741b9d514a9a6cf6b0a1505bb4c9f8a9dd7739d69639c82c7f4cf7'

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
