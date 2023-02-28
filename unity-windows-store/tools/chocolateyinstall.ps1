$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/996aee41dc57/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.2.8f1.exe'
$checksum64     = 'ce3fef4f0ce1c58894d8a9b13c00b1b59f147dd60f8eb78d050ba143f3d12e58'

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
