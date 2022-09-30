$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8a091f9adba4/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.18f1.exe'
$checksum64     = '95a00c1c94e1093975fffc73c1ec8a1f0cb91497b68cf6213febe9687339ac55'

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
