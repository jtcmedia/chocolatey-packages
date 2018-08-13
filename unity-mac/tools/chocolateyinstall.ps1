$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1431a7d2ced7/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.2.3f1.exe'
$checksum64     = '840d9b69ab62675ead233f6c955df0877fa37d9c3557095651f33b69125eee6b'

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
