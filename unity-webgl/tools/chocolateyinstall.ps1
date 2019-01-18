$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b3c100a4b73a/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.3.2f1.exe'
$checksum64     = '55e49125661044a114e22750d96d038e0140b8ac931a885a4a25745a79ce5068'

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
