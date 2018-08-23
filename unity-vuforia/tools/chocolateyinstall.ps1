$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3071d1717b71/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.2.5f1.exe'
$checksum64     = '13b85f7cbaa995ce62b752c8dd78a5debc41ae7e4e922f104339668d020f44f7'

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
