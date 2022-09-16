$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fd6670bb8be9/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.3.39f1.exe'
$checksum64     = '1ef61abf1a32a9a04ece8189b0dbc51bbef238b104cab520377a3a7189f13a9b'

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
