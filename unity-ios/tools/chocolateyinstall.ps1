$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cf5c4788e1d8/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.1.3f1.exe'
$checksum64     = '3f8609e757794d1c6bf8b074a3a0c69ecc7a6d1c45ad410bc6ef5b55bd149e5e'

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
