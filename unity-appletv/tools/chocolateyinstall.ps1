$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/83fbdcd35118/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.2.13f1.exe'
$checksum64     = '734226c5bffcb7e60df0293a276bcada8fce3f3177fe3031eabb27b4c04a6090'

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
