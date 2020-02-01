$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/27ab2135bccf/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.3.0f6.exe'
$checksum64     = '7dba8c5b4bd197183b2699ef49d937d137a458fc81a4d3e74d76999d8e5c3488'

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
