$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a16dc32e0ff2/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.26f1.exe'
$checksum64     = 'f4ea6b55c3497d72ab478575438b5f05259bafd2c3344a0dd62ecfbce48cf4ec'

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
