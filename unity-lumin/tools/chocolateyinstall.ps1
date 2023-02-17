$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/660cd1701bd5/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.3.45f1.exe'
$checksum64     = '7dc36dcbd292505dd066aafdb8740584948a73ec563653b376d6b5c55c429173'

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
