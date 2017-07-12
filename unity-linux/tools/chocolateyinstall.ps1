$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a2913c821e27/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-5.6.2f1.exe'
$checksum64     = 'b7a69e28fbc2084a6c7f61d6ffda8c6d010940017922021b6b1335562fc29a82'

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
