$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3bd4f66ad299/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.5.10f1.exe'
$checksum64     = '7d236bd64302bafbd4b5ab85d1408d5669e5ad488fcd849f792638b5340baa88'

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
