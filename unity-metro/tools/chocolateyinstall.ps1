$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a2913c821e27/TargetSupportInstaller/UnitySetup-Metro-Support-for-Editor-5.6.2f1.exe'
$checksum64     = '2d9dbea433e566321711a8b6e1f309386f67c4c54673989909e585ba3e69a054'

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
