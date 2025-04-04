$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6bc6fbc26ac6/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.2.0a8.exe'
$checksum64     = '48704c44f474dd85847b0d14b20dd1ec7206ffa014615262bad00220610864fc'

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
