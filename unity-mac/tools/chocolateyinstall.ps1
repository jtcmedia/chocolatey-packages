$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7938dd008a75/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.1.8f1.exe'
$checksum64     = '0c8dbfec3ad0d1167bc914702ba66aca683915ed30fffaf4a743e168308aae50'

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
