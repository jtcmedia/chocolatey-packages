$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/efb8f635e7b1/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.17f1.exe'
$checksum64     = '2a55c80a4a2b35aff9aa7dbf471b13118936e8e7bd12b35c23b25eb7e536ab9f'

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
