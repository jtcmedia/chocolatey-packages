$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c53830e277f1/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.2.7f1.exe'
$checksum64     = '402bd287b630f638c0064cde69bc8ac5bfb7a06babac0eba0a21af03f2c6f8cc'

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
