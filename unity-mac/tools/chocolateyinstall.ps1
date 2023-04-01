$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b6c551784ba3/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.22f1.exe'
$checksum64     = 'a6c650c896229ebd57c5d7ef2e71c92a170f84ba1f007ce850683ed075139f0b'

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
