$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b3c100a4b73a/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.3.2f1.exe'
$checksum64     = '0cd720a5bfe20be421baf5ca7b99dbf8526c6ad4dbee4af3ca1693272506eb75'

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
