$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8e9b8558c41a/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.46f1.exe'
$checksum64     = 'ce1d39b8468b89c7aa429a6f28d71f52fc76753f3bdf3243f996afe5e68fe14d'

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
