$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/cb262d9ddeaf/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.2.4f1.exe'
$checksum64     = 'b224664dfc989d5c871ebac3da9cb7f47c98be9594fa6c9b0e988e6fdff46382'

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
