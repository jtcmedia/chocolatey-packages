$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3e18427e571f/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2019.1.2f1.exe'
$checksum64     = 'db2a348d20b0a4ee2643583fa014b7d8bcf4fca078c05e9c4ddca23155e79571'

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
