$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/81610f64359c/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.4.5f1.exe'
$checksum64     = '4ef1c5759c711605b13d865867b3aa5255b1bc9dbc571d89058c5a039b00ce8e'

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
