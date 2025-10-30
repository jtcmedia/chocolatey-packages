$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d3d30d158480/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.10f1.exe'
$checksum64     = 'ad8817a99cc043168bdb8b9d781fc08100d4f330d8cbd07dc0e62b1816ffe7f6'

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
