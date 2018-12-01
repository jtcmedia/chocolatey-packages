$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4550892b6062/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.2.18f1.exe'
$checksum64     = 'c3da11fe98e7a413666f8736861f74b73bc6df019bb7e285c3d04be5111355db'

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
