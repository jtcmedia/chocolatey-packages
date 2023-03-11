$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/bcebec703747/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.2.10f1.exe'
$checksum64     = '4061dc6e1d540226f0202f510221fbdca79934015497fa93adac0082cdb54033'

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
