$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b5238eaafb35/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.6.0b5.exe'
$checksum64     = 'ea8d01e2e5236bfd0821c0d10ed0bb2e950e182ebdf6126b1906d9e54c5db656'

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
