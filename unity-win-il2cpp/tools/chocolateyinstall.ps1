$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/38370f5b2257/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.1.12f1.exe'
$checksum64     = '93dbe59dbcd15c9ed51245360a73fa7f8976cf398aa9eca338b358fc9bdfaf6d'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
