$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8c45277fb9c5/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.9f1.exe'
$checksum64     = 'cacfd6e381b986580b396d92ad077730f05d0aa9bf6083eb3e3cd416d1540df5'

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
