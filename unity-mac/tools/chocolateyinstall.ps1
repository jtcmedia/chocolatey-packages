$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/fef62e97e63b/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.1.1f1.exe'
$checksum64     = '5e279203259b7297c28a6ea1533518d312feb427105ed9ce2c6df6184529fc0a'

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
