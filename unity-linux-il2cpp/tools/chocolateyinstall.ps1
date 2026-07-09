$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf7ddae6c717/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.6.0b3.exe'
$checksum64     = '7971ee065e889625a13eb166427eaabbdd99076495060014ed573c0a166eb212'

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
