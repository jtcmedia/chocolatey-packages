$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1c7db571dde0/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.3.8f1.exe'
$checksum64     = '7ffecb40bbd163a8258fb238e5dc66d3ea8b9fe091cb8050873d20809a245390'

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
