$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/43d04cd1df69/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.5f1.exe'
$checksum64     = 'e43f499c57595c457e74170ae4772adaa187c71c32d1ff3726fca23fe4cf29da'

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
