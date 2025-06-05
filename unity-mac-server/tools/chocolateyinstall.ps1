$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eb7dd46c99ad/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.0b4.exe'
$checksum64     = 'b5a4b08febd15adc53d1f0117b0896e6d551ea4678826fa5bf4f7d3cbe2215c0'

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
