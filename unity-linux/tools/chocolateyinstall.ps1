$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3e18427e571f/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2019.1.2f1.exe'
$checksum64     = '009cc84b1e9d3d81e87a9090020b82ce21b87c55fd59487ec3b44cc693fd1503'

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
