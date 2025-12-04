$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0707b6d1e918/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.15f1.exe'
$checksum64     = '591735e2e295be359d4a4df29ab6b430fed146bbdd315ea7b9d425a5b3314899'

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
