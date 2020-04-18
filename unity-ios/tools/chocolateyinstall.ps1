$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5968d7f82152/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.3.10f1.exe'
$checksum64     = '9ef74ea42cc9a18cf33356dbcb9cd6a7132f8560f02b3e8009d6f8c2e3b1c38d'

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
