$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/011206c7a712/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.35f1.exe'
$checksum64     = 'e133e709b07d52ec7d17ae050fab0bf3bea83e32b07356c06443e5f149381c3c'

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
