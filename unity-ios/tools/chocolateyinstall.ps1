$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e2c53f129de5/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.2.5f1.exe'
$checksum64     = '09696162395762a5ae97fcb6368d7da3e5c46630ccf847fea550c3537946ce0b'

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
