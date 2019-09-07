$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c63b2af89a85/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.2.4f1.exe'
$checksum64     = '11809a3dbba2aeae6648e17aecc5a40452af4738667ff5f9d147d090be7321cd'

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
