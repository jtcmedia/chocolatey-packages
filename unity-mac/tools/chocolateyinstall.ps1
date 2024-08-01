$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cbdda657d2f0/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.40f1.exe'
$checksum64     = '8d98faf3a0e906951e0270f76293af2b9c9f39b164f70c6c5db745fc5b173da8'

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
