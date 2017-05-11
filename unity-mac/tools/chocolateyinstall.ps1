$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/2860b30f0b54/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.6.1f1.exe'
$checksum       = 'b6c2fc4bfcb6f7e6463c20f61f68ea7957c4d472d7990e35a0791e557697d9e3'

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
