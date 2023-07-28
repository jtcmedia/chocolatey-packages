$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/964b2488c462/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.1.6f1.exe'
$checksum64     = '2794ce80b8f040bccb6ec43dee5baa7c122fe3df2602e17a07659439e81c5a73'

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
