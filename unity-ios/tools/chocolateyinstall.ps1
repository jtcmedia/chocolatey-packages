$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/316c1fd686f6/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.2.10f1.exe'
$checksum64     = '0afb37cff3e83291a269f267281bfe362b1e54bca3ad7d65bd86520639df78c4'

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
