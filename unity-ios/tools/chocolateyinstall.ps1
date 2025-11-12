$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7134d7685e5d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.11f1.exe'
$checksum64     = '57d2f34313f2ad2f45ede7148f3bcefced4f58a81c96b921b76b917a743ebf1e'

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
