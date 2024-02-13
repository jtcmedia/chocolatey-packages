$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0c9c2e1f4bef/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.2.9f1.exe'
$checksum64     = 'db4254d8a4b4e4f07875c2519eb7fb39a4f634d572608c68bdd65f074a9e04ec'

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
