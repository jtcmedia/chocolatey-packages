$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c96f78eb5904/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.2.7f2.exe'
$checksum64     = 'e8da413248605743596e9c3fe50f91da81c0ceb1645636bb9929926db23cbcb4'

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
