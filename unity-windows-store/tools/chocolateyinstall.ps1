$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/621cd60d08fd/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.2.11f1.exe'
$checksum64     = 'b003b399d5807d2c78ee534b67024b102ce75456323ea2b3e5d10fe60bede491'

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
