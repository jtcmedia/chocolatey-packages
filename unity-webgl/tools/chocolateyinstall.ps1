$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e50cafbb4399/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.2.11f1.exe'
$checksum64     = '30bed7a4162a41faf00f6e2ddb7bc9410c6432db9ed47b58f69d74be6a930810'

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
