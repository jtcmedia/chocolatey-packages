$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/74a0adb02c31/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.61f1.exe'
$checksum64     = '205c620487c3e5dd6d73f0a2d72e85f5ddcc6154d068473ff34b7434807a6b2e'

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
