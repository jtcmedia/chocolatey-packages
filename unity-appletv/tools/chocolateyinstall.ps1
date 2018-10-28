$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3262fb3b0716/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.2.14f1.exe'
$checksum64     = 'f920f6503517ba521e16949d0b067695f71dbccc3ffe07f4cacde5e6160f480c'

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
