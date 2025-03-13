$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f63fdee6d95/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.60f1.exe'
$checksum64     = '131433356e96a0c2cb343ddb61d228081b6b869070a351f007e26db01719b570'

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
