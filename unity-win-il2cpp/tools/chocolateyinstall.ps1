$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/369b620af41c/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.0f1.exe'
$checksum64     = '3b17d6011037aafbaab3acfaaac9be9e06ad4c2fa34fa45f6d56279e8e031291'

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
