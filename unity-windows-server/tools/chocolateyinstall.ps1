$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/964b2488c462/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.1.6f1.exe'
$checksum64     = '082b884b9907529ea50c8eba1dfe9415c6cb15724bbef1cffcb441da8525a0e0'

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
