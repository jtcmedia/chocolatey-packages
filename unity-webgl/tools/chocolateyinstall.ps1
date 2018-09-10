$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4ebd28dd9664/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.2.7f1.exe'
$checksum64     = 'e18865c74fe0c9f6f666ed633edc485fb28bb0e379bb26a1f3bc7eeb24801a90'

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
