$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1120fcb54228/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.52f1.exe'
$checksum64     = 'c04344489d9acffa43b4a3ee9deb4849c6193e1a0e5014d8a58b5a1610af3437'

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
