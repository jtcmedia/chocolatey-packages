$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1120fcb54228/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.52f1.exe'
$checksum64     = '856731f67b17c10e085cd30e09b2c5b68c1267558c522ecebc2b7d729201afcc'

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
