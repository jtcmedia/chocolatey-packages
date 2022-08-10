$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b30333d56e81/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.8f1.exe'
$checksum64     = 'd5e53e13e99278270f49c4bea3a9469ef0447f4417952df2cc671ad93dfcff04'

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
