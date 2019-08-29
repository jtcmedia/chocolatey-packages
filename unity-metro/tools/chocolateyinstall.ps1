$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8e55c27a4621/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2019.2.3f1.exe'
$checksum64     = 'a0a6be631d1d8fa8510b9c74ec282d279fcc7de6979d76f698a0a70203e07dab'

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
