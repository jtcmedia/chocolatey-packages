$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ec6cd8118806/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.26f1.exe'
$checksum64     = '1d81d30b8f375a4490f881dd76b770555d3dd028e3db9ae5f8e530a959829f68'

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
