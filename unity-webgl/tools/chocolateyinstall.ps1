$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/53a692e3fca9/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.13f1.exe'
$checksum64     = '4dac89f8303567ed92f5f255e48e471d4e3a0e68f9ff1817e8711171167c6516'

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
