$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/da872d7b2f71/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.1.0b8.exe'
$checksum64     = 'e23017377d26e2a9bcacb698db5594525a3ddd981866c8b96b14342c7cef00fc'

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
