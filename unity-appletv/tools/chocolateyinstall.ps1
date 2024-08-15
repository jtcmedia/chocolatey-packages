$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2dcb6a0abc42/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.42f1.exe'
$checksum64     = '5ce570ab1432b99f14926e8cb1d25a7bf9841ace66c2f3378ef2151b06591eee'

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
