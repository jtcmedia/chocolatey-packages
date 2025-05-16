$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d17678da8412/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.0b1.exe'
$checksum64     = 'f869d504d9778d01b27df6b2f4f5fcb6cf9c1c7de952b33348d8ed7b1d6e4297'

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
