$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3737af19df53/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.5f1.exe'
$checksum64     = '43e43ca7899c10281b58a41fbaa07c3fc9faae88126d80088e14bd555593c447'

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
