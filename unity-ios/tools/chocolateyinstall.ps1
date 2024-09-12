$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8e9b8558c41a/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.46f1.exe'
$checksum64     = 'ec87d7a861a4931a782ffcfa8ea4ce998f37ac32113e02e0060703acd411acac'

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
