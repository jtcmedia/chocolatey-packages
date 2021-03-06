$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c53830e277f1/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.2.7f1.exe'
$checksum64     = '19679e67bcffdb94886a6d0489ceafe6a7b5abb69220e1a94afa6cda0194661a'

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
