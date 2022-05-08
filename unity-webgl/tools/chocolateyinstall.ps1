$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d6360bedb9a0/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.3.2f1.exe'
$checksum64     = '6db90e03f2898b31c2c7bfdf2db6aa36e0b1dda532113375019a4c77d717d88c'

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
