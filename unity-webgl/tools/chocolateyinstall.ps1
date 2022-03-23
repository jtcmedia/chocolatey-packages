$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/019e31cfdb15/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.4.37f1.exe'
$checksum64     = '40c33e84cd4bc5f673ae5aa15ade553dc5799e105e2e8ee48a9cc5698f1dbda8'

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
