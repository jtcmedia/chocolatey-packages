$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c5cbb0b314fa/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.2.15f1.exe'
$checksum64     = '03936bed23da3085a0dd89839d42d356b963baf90e78f470d5d0b58186d081e2'

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
