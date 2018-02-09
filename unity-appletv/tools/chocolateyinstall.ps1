$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/fc1d3344e6ea/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2017.3.1f1.exe'
$checksum64     = '987a2eb834a115051cc5fa665f7086032b23b2f863a30357044886835333f86d'

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
