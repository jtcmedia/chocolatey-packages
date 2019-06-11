$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f2970305fe1c/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2019.1.6f1.exe'
$checksum64     = 'c84b2fc14f802b577be41f42b7260d13c18c7402514656f1d0e99b9f68ff17b8'

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
