$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1a308f4ebef1/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.1.4f1.exe'
$checksum64     = 'e1dd44d1854c7dda02ec855db4ec57a038d18b0145a9d2f86f852335a174ff65'

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
