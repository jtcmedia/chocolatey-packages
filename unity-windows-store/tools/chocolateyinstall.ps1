$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/770e33f6875c/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.2f1.exe'
$checksum64     = 'd74c42b1c93a03d6c55cc847e1ed1d437c92fce9d4406cccbfa75a7a99e37f8e'

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
