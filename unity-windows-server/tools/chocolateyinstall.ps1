$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/831263a4172c/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.1.15f1.exe'
$checksum64     = '5bb281997e2b4beec47d9f94b5115398fb4d28292aa437802d5cedf65efa51ee'

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
