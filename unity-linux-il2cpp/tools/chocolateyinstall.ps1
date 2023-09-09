$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/38370f5b2257/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.12f1.exe'
$checksum64     = '45556c403b97318b855a930caa17171e5112d1dd6a436fd8d5287415b227d656'

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
