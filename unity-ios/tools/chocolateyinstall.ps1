$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/94bf3f9e6b5e/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2017.2.1f1.exe'
$checksum64     = '068148f83496db48dca2bceeb63fa4461aaa2ba0401ce65b659636e3d0831b8c'

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
