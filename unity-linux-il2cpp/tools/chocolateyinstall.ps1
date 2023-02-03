$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/551d45108343/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.2.5f1.exe'
$checksum64     = 'faa05244b3f1bc6f30edb409813163f72b1c3b7bc2991bc0b3c857123668441a'

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
