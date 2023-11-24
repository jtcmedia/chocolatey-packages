$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eff2de9070d8/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.14f1.exe'
$checksum64     = '1b2d744cbccb8d7da9de13bb9adc5a9cb642f88edac8b382321f7847533f3e15'

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
