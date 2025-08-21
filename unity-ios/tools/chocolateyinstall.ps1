$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9c7b5e468860/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.56f1.exe'
$checksum64     = '13af190d4880fa1971e063bd3f5ed10bba59a030a225c16beab3abe2dfff6dc2'

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
