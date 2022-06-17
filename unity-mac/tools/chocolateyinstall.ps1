$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feea5ec8f162/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.5f1.exe'
$checksum64     = '9d289597ef7ce9aa47dfe49946a3f66f9ea5cdee27a93ff97b830a050e9b765f'

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
