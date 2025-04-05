$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d91bd3d4e081/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.45f1.exe'
$checksum64     = '9c834027fb61643ea55e43ff25a4d84377b00f1e2cce42d303f242ab5acf6001'

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
