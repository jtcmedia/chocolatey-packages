$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8c45277fb9c5/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.6.9f1.exe'
$checksum64     = '7720860e628042156404ca5c36afdc918b8de5908a690df35f67bfb4c671822d'

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
