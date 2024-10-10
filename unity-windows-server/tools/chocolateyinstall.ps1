$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c3db7f8bf9b1/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.50f1.exe'
$checksum64     = '453cc7d1aa7820060425f7e0d815dabdcfdd3cde2d292c9c67a8b6a3c5781b4c'

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
