$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/db7aa045cc2c/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.1.14f1.exe'
$checksum64     = '89859ba0d1b02ec59abc92a1439fbcf7a995a7b5153dccb0bd5dee13231da64f'

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
