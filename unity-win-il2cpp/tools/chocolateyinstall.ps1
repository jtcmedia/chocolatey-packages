$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6bae5ce6b222/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.28f1.exe'
$checksum64     = 'c04add4d276b1937ac0e8272c203122761a0ec20cc58d8613cdc8fcc028eb7bd'

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
