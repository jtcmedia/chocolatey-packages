$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e348e726afe7/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.1.2f1.exe'
$checksum64     = '9ce4a5576e03640aa9154c134b953536b29297116c68b54984b91079d689670a'

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
