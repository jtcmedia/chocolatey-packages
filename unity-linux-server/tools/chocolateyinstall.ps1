$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb93bc360d3a/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.46f1.exe'
$checksum64     = 'b5351f1ed0e8124adb7f7ff72a5c6565e50bd529fef7c6ced01354a0ec913ec2'

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
