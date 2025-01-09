$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/433b0a79340b/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.33f1.exe'
$checksum64     = '1c75841472906cdf64a3e774ff3005dac601106d2d6ff2c95c76779e66f7657c'

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
