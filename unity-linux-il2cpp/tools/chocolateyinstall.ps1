$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c7db571dde0/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.3.8f1.exe'
$checksum64     = 'b7bbb5abe0442feae5bfcca4665fa6a7b492e4344f715ecd4193dda2ce5e48b7'

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
