$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/44796c9d3c2c/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.3.0f5.exe'
$checksum64     = 'b61d7f44ce2fdf3111e122c3ac4980bfa6abc4236c7bf6154cde9608fc74eeaa'

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
