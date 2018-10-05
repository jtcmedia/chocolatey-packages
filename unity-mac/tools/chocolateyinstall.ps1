$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/38bd7dec5000/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.2.11f1.exe'
$checksum64     = '0694d39dbefc158473090d1462b3c2bc707ad0dcb79a3803b0f6c86793807dbe'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
