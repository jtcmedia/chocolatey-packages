$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9c7b5e468860/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.56f1.exe'
$checksum64     = '595c6efe75dbfd9d509b245c21a6fcd7b9ec09d4f28392dbfba4e83156eabc22'

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
