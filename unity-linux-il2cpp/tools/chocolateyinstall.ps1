$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8c45277fb9c5/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.6.9f1.exe'
$checksum64     = '575301d8cc9e6f17c3d49ccf1c4820f7bba67e2cd4c76ce571270026ecfaaed2'

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
