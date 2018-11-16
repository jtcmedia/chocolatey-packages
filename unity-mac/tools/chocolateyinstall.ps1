$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/39a4ac3d51f6/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.2.16f1.exe'
$checksum64     = '9230de463d659d1068f966615f8f251dd197e6477e531957a2e9eb7f7a5283ea'

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
