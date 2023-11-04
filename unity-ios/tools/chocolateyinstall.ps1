$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3b9dae9532f5/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.32f1.exe'
$checksum64     = 'fb2a476d077a6db35344daa90d142e961b0c2856baeb0446b94307f1f194c4c4'

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
