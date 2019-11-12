$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b1a7e1fb4fa5/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.2.12f1.exe'
$checksum64     = 'c84b5f60c0deda9ae4a4a2edbac7f913528ccbe7421647e8b4e4a5beeb838281'

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
