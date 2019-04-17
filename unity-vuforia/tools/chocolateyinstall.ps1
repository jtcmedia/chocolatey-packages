$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/292b93d75a2c/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2019.1.0f2.exe'
$checksum64     = '7276646cc2bb4b530cceaddb6ddf9cace5ac3dae1f17639df65bc3fb485845ca'

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
