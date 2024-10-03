$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4dae1bb8668d/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.49f1.exe'
$checksum64     = 'ba7f7bcbac7feb8217de475c3cbcd494aa5722d91af9dd03c66f9b5f09bdd9a2'

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
