$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0707b6d1e918/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.2.15f1.exe'
$checksum64     = 'f15ea5f72c70ebdcdc4f9b6a6806a58408b5d6da1c4a37512b183a8c4c70bc33'

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
