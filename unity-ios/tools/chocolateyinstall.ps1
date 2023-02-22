$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8331acaee5d3/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.2.7f1.exe'
$checksum64     = '3d7f8c58d063b139e904a6b903e25b438a023b72c380c63d58ada4e953c9ca53'

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
