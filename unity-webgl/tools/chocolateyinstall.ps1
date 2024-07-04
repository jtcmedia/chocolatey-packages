$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/95a4219250e5/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.36f1.exe'
$checksum64     = '2452493d37186c9c55693ef610af09f75dc7fb1ee1fc7574d331610dc80dfd89'

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
