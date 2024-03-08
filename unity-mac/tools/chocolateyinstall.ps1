$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7a0645017be0/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.36f1.exe'
$checksum64     = '383e18112ed488537c9c687b7c64dc0559ec8238042da17c29405c07dbd13be0'

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
