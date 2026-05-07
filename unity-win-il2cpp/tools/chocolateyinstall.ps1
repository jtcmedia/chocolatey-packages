$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0b051c2e5d54/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.4.6f1.exe'
$checksum64     = 'a0574fce418e5c1cac708ea641252d0bf8f2e60950909892e9d365fae3f08de1'

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
