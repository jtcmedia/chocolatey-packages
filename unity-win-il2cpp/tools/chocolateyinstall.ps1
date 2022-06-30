$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/240f4c1f462c/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.7f1.exe'
$checksum64     = '1f7ad35a9da55475d123f2b51f12c3d93ab4def4e873e866eb4b5c3e06f3c04c'

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
