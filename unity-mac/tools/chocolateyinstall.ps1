$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7b32bc54ba47/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.1.2f1.exe'
$checksum64     = '8abddd11ccf20daef7084fbbd7fdb7a9a412815bcaf0093bc39db7404fad7b75'

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
