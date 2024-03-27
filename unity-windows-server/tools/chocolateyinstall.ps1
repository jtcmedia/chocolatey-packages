$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c5cbb0b314fa/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.2.15f1.exe'
$checksum64     = 'c7d24be2488d597d7b6105c5efec76cc7d45a3c8b5c0293265e2a04689780289'

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
