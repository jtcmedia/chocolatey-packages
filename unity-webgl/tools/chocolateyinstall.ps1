$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3bd4f66ad299/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.5.10f1.exe'
$checksum64     = '8a9c66b54eebdd6af21ff5c4b1e3c51779a7f9c4ddc5a63bbf372034aef87ae1'

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
