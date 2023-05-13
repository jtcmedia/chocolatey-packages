$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/765657fe9343/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.19f1.exe'
$checksum64     = 'ba8e6b9b374ddccd62bffca1945fbb1d0cb71f2e967c89a2344f4a39b15baeab'

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
