$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7a0645017be0/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.3.36f1.exe'
$checksum64     = '6bf78e49d77848a922b7f9047b1a4b1e66259b14195dbe97dca4feb889e1070f'

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
