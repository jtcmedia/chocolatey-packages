$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9c7b5e468860/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.56f1.exe'
$checksum64     = '3a186e9deac74c4952c59afd9dde9301c9b7a0b09e86159939d26583a6098897'

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
