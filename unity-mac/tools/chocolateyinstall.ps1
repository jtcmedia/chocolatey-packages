$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/45d8eee7de74/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.6.3f1.exe'
$checksum64     = 'c92ee07770464d46653d529be407be76c69ac0e26004a8a8b12f215d79948bd0'

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
