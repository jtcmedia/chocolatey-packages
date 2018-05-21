$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b8cbb5de9840/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.1.1f1.exe'
$checksum64     = '862cb345ad5425216904acb176fdf51c25b267088851e1de7914ace4e1df7707'

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
