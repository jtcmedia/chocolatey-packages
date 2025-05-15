$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f34db9734971/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.1.3f1.exe'
$checksum64     = 'f0ee1981b0d2801c8ae9b2afb30be42431e01fa6c433ba32b33458de7bfe9342'

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
