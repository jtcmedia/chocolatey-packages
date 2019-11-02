$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5f859a4cfee5/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.2.11f1.exe'
$checksum64     = 'add3356ad255f7a0bb2bed90d3ea2e30cc478dfd4dfb54c3fbbdf852db0ed6dc'

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
