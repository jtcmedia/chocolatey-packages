$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/75bff06b76bf/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.3.43f1.exe'
$checksum64     = '8c7ab48df5a3d64001207ecb9b5ab2741d455afd359f98654538caf250f0ed00'

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
