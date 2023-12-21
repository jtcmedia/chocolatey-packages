$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d2c21f0ef2f1/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.16f1.exe'
$checksum64     = 'c53dfc1119c0ef23a68b37a652cdfc89d970eba2fcace16a46ec0adaf33164bf'

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
