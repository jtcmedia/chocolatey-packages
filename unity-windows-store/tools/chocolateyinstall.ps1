$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cc571a6ec95/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.2.9f1.exe'
$checksum64     = '07776902686a2d7539663f97cf3336838b36632ebd196f08c99e9f2a350f6417'

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
