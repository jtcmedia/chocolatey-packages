$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/068178b99f32/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.2.2f1.exe'
$checksum64     = '7b34b09a95af6db1c0dc53a5acc9c242bae0abec297d8e5c329db886da69e176'

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
