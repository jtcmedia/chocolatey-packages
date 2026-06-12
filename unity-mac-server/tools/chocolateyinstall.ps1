$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b0a1d6caadd2/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.4.11f1.exe'
$checksum64     = '99e0aa1b91b7a27b3b1b1268443e557f2a8474e17e87e07fbfce78b7fcead1ba'

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
