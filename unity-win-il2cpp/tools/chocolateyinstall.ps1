$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8af3c3e441b1/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.12f1.exe'
$checksum64     = '2f3ce29a99582854245a91e44316819fca55e954316bc0c8cf50fcd966cffb2a'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
