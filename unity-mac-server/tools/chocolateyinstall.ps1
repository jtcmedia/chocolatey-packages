$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9dce81d9e7e0/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.1.5f1.exe'
$checksum64     = '758ca9df797249323ac28940f6c46546cc15abe0815ee915688ad5c84f4b14c9'

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
