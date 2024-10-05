$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/001fa5a8e29a/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.22f1.exe'
$checksum64     = 'f40de6539e2dd6d93dc811b78f78171638ac37bb386bcd3aa52695fa2e567840'

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
