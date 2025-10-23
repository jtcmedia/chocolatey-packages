$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e0c4e791ab71/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.9f1.exe'
$checksum64     = '170c7852edd015c587bf0af3f030a8b800e8c7b051f53eb63ff36e9ee7dc76d8'

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
