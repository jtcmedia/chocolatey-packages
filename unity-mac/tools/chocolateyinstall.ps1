$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/e6c045e14e4e/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.4.1f1.exe'
$checksum64     = '22709264c3c5afd99ee737c46292cf214730a5b56337293a51ada6df00d3975f'

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
