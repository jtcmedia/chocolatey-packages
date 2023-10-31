$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2b639e48c919/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.1.18f1.exe'
$checksum64     = 'f4f21dc77f44b4c1b01eae977eb5b7931e2ffb323bfbccf5f5883d194f6ffed3'

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
