$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/10bfa6201ced/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.6f1.exe'
$checksum64     = 'fd5165dfdd89902ec76200853464cdbd793639addc4263eba89279f2f1bd193c'

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
