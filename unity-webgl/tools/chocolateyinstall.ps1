$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/cb262d9ddeaf/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.2.4f1.exe'
$checksum64     = 'a7c3381ae0d41f434dfd763b8201353d7c3fb799ddbf4c578b0c7ce2b9d9490b'

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
