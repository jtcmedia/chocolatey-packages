$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/831263a4172c/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.1.15f1.exe'
$checksum64     = '1dfdf0e6dbd92e185cd9940a731f5735aa6545d5d2f1d88b6ee3b3fc92cc15ee'

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
