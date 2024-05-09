$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6bae5ce6b222/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.28f1.exe'
$checksum64     = '349291d6fc8be1775daf192bca672b7aa935fe6df94ab4c28211b0888962694a'

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
