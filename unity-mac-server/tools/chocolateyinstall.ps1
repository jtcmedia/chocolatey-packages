$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/10bfa6201ced/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.6f1.exe'
$checksum64     = '4110134e9988f5d44c74a6841ee888774c1d3065c938e9966734adc0675bb575'

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
