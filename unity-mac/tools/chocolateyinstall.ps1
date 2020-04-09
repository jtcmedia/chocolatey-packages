$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/e6e740a1c473/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.3.9f1.exe'
$checksum64     = '167d293d35a92aae5565731c6d4091b0986daae28521b7dd4e331c966165b4cd'

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
