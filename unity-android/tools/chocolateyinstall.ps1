$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/017862109af0/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.5.7f1.exe'
$checksum64     = 'e5d0d66a81a1e771298ba54c125cee72cf0b4469542274ad2a531ec887001175'

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
