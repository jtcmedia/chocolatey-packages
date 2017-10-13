$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/46dda1414e51/TargetSupportInstaller/UnitySetup-Metro-Support-for-Editor-2017.2.0f3.exe'
$checksum64     = '0f375e2313c8ee674eaf2ab2b553c73b29c8613219b3dfb5d5f36b95ad7855fc'

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
