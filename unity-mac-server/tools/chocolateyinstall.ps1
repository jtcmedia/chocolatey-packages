$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9aa0f82c4f96/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.1.10f1.exe'
$checksum64     = 'f99041f5189fc079ebe079f2a2f174a8c08f3c679b8f9301c1bdba53b0e2542f'

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
