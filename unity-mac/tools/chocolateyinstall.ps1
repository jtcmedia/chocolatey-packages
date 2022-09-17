$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c7d0df0160b/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.10f1.exe'
$checksum64     = '0c9238965859e3c627ec5ce1ba62b9bb2cc92dad8062f9adab49e3ddf57a3077'

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
