$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3b9dae9532f5/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.32f1.exe'
$checksum64     = '7798038227ac9ecf1181cd56bd857fe33bcb909ef098d825e72e7e2f0faeb27c'

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
