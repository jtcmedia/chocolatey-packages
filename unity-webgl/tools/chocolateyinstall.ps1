$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/06990f28ba00/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.2.19f1.exe'
$checksum64     = '6a8a0ef0d3caa64e84d75449b34331666ed468618141eb1f3c4572ec8c687ee6'

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
