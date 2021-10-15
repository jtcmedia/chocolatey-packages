$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b6f2b893ea32/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.1.25f1.exe'
$checksum64     = '1818d18e7ede8ede8bdec38b2ca23fa5599f1032ce14d89b7282a0756831adfc'

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
