$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/0a46ddfcfad4/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.2.12f1.exe'
$checksum64     = '3e5ff778d8502426ec0c975b231fc61bb33096b1f900c3af881e68c06e11e238'

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
