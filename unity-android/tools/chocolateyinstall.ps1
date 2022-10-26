$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7c19dc9acfda/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.3.41f1.exe'
$checksum64     = 'd103e806f3991aa0e52c04b79c4e72056c7b977194f9b0e2acc6a56a3d500627'

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
