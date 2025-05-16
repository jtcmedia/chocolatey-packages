$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d17678da8412/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.0b1.exe'
$checksum64     = '2921b6a9df08292f8d6b7e1320a649f7e51f1f1484e6a268a89f1e458f21efab'

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
