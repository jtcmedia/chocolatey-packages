$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/21747dafc6ee/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.2.3f1.exe'
$checksum64     = '93c601075c457c4308827903180e713c9e30c75caeb0d3f51dee7bbd99edc524'

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
