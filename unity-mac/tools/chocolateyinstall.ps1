$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6f7f9e1c9e8a/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.76f1.exe'
$checksum64     = '127d127211ec1f286341a45e5cbdbd0a109747f65c70dabeb833c79be9b46f19'

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
