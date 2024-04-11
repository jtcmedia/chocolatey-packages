$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/334eb2a0b267/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.24f1.exe'
$checksum64     = '613364c2f5617c08e73bb8fa28abf707d822b445111a2a87ca2e136779d06aeb'

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
