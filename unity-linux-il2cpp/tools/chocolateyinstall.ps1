$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/78d14dfa024b/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2019.4.39f1.exe'
$checksum64     = '6300669aa3aef8d69bbb73bc96fb036d8ab5c32ea74b783687b3766365f67c20'

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
