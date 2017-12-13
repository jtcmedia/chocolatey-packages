$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/94bf3f9e6b5e/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-2017.2.1f1.exe'
$checksum64     = '88248a0bb4a39e88ff11d330282d486c994e11fd9831f0fb64d80c1fea66cb1e'

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
