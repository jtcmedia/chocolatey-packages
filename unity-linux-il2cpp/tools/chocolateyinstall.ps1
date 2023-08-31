$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fbf46ad88f3d/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.11f1.exe'
$checksum64     = '0a7c299fbf63744fc285d07b95015a3949ebde488046aed831ab3ccb9eca9d93'

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
