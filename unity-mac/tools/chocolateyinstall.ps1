$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7321c9670bc2/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.16f1.exe'
$checksum64     = '36cf2d98d2613447f2a1333ce5f057c20f63185156a470fc88f08c1050b2be38'

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
