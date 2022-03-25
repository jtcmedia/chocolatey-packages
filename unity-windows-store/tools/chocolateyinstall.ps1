$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/019e31cfdb15/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2019.4.37f1.exe'
$checksum64     = 'bcedbf256300d4accadbf2cfff9c1abff5dbc50adbbf0a10e61d5132eb21893c'

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
