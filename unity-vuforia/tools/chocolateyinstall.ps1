$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5063218e4ab8/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.3.11f1.exe'
$checksum64     = 'b96637aceda1fb78c24e0c930a59dc8f08d4fcb0b36ebf8c60176ff8c117f9ca'

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
