$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/249fe0a196c2/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.0a6.exe'
$checksum64     = '6c39970670ffd0ef0c47a576da0e33cfbb35a8f7b515c1c3a38ee607bcb41278'

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
