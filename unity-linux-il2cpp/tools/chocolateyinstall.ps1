$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/068178b99f32/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.2.2f1.exe'
$checksum64     = 'bd3c67dc0a6ca5bec92bcd263acef1d6265f21b5bb4fbf44c766682047608ac6'

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
