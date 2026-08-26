$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3bd4f66ad299/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.5.10f1.exe'
$checksum64     = '6e3a93376194f353c7ca776a4fb53038e5e6582dd3885ad21da577cb1b22fd00'

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
