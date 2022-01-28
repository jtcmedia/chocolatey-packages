$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/921b45a28ab6/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.2.9f1.exe'
$checksum64     = '76cbf1a67984dc469bf432c136f8bfd09613814953a5cbaa93642ba3e254c0cd'

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
