$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/10bfa6201ced/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.2.6f1.exe'
$checksum64     = 'dabe9f10e83e28a42402b0f82ed556100960b625ab77507ed900c067e5a14837'

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
