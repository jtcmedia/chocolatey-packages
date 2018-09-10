$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4ebd28dd9664/TargetSupportInstaller/UnitySetup-UWP-.NET-Support-for-Editor-2018.2.7f1.exe'
$checksum64     = 'b02ea959e8467f4a1e91a17bb84bb730d955b29bfecd6fdeebaa735f60b999a2'

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
