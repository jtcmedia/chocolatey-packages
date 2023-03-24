$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/022dac4955a3/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.12f1.exe'
$checksum64     = '9b3ed1e9a288987b73099ccf6ad09f16dd3c73179e39c0e1ba3329b1bbf234d8'

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
