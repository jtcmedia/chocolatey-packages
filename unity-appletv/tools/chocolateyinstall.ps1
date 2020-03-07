$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4f139db2fdbd/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2019.3.4f1.exe'
$checksum64     = '435b113777d460bf834fc23b3da788d45d5d7f21147ff79b0d0e575286a13577'

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
