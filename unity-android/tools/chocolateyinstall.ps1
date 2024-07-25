$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4e1b0f82c39a/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.39f1.exe'
$checksum64     = '3d3ca3e1b1a758b88f2a01aef6e093e4772f56041f20ead8a8138e6621b63f1c'

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
