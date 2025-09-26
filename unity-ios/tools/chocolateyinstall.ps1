$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cc51a95c0300/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.6f1.exe'
$checksum64     = '0d7c423a1ab22456594dc916b46a1f8f023e09c3e7b7826ec40749210413adf3'

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
