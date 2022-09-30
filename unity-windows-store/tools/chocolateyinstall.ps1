$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8a091f9adba4/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.1.18f1.exe'
$checksum64     = 'ccfcabf11a0850dc134010a34c68398ea2de98a6ef3296c362f83e10e7ef4e20'

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
