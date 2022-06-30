$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/240f4c1f462c/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.1.7f1.exe'
$checksum64     = 'cf5a86321745ae4e0c2c5cbbbc82b5ba12a4baa5910bc91e7e7a0ac79cf011cc'

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
