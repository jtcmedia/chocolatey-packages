$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fc477ca6df10/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.1.6f1.exe'
$checksum64     = 'de69fce3cb00c9677e74c53bc9741149dc82ed97e48aaa53f0c61c7017c9b0d8'

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
