$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/674aa5a67ed5/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.2.10f1.exe'
$checksum64     = '555a0115de5e6e117058804f57b0c5634f9cadec814b8c00cb2149a37f6c83cd'

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
