$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a18e2220bd50/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.65f1.exe'
$checksum64     = '028cb3011a83d8e0ecad4d0cc8d0f7ca19616bd5238697ec2672112f33eb9d77'

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
