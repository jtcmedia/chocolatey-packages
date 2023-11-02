$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/629111e352bc/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.1.19f1.exe'
$checksum64     = '1c44811cb5285798bd19ada0a0519748b2124e4a0e9136058dce6828d0f342bc'

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
