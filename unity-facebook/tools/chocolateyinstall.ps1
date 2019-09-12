$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/9dace1eed4cc/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.2.5f1.exe'
$checksum64     = 'bbab470f956af6b6dc08a64a4b832535df85ca30ce4e80cbfb82d3103727f00d'

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
