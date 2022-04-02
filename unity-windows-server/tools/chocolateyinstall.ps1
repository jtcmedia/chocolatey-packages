$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0c6e675195cf/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.2.18f1.exe'
$checksum64     = '0bbb981ee510108ec7a08b6dfb3483bd3a87b6f48f65476ccc94d4bb3ea97706'

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
