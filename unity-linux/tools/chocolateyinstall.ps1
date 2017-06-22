$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/a2913c821e27/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-5.6.2f1.exe'
$checksum       = 'b7a69e28fbc2084a6c7f61d6ffda8c6d010940017922021b6b1335562fc29a82'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
