$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/30d813e1a2a9/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.2.15f1.exe'
$checksum64     = '568b615a5fdedcfdde07e34d8bdd3c5ea86ab58f8ff9e252c5e88849d157694f'

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
