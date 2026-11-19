$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/40e81493c67d/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.6.10f1.exe'
$checksum64     = 'fd5b3dba83abf900fb050958e1c18410c61c42df01e73a922b1c224b94d6899e'

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
