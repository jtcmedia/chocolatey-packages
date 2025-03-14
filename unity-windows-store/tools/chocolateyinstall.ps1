$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feb9a7235030/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.42f1.exe'
$checksum64     = '8a5abc16bc8a5b822fab42a3cc7a4d4a8a54110b1108d85d5452de1d883b869e'

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
