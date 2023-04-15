$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/30d813e1a2a9/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.15f1.exe'
$checksum64     = '210ea90ae2239937fe254c57e6d3a66aa1fa2a012540a0493b9e0ca0f7adf20f'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
