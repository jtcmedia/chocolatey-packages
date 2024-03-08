$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7a0645017be0/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.3.36f1.exe'
$checksum64     = 'baefaf9c6c23a6b1fa25248b4920d74a6d9a0baa531a3dce2e24987bab0d8909'

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
