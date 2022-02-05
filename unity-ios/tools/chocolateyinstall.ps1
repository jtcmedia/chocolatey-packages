$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ee872746220e/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.2.10f1.exe'
$checksum64     = 'f59b393f650c11e51a6269c37f85fc32adceaea7484aa2fb2863686b9aa99cb9'

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
