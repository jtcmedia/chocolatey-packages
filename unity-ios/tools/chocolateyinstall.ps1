$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/145f5172610f/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.1.9f1.exe'
$checksum64     = '213af5f27462babbde0a81af862e5f2752ef7a5df1587a3e249d33eb89b7a502'

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
