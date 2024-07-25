$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4e1b0f82c39a/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.39f1.exe'
$checksum64     = '981e2067dfaccc6aa8bbf668e70af62c997e4559093fc384ae441c195d22ed52'

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
