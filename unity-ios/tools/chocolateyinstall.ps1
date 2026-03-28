$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c1f81ff5b082/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.5.0b1.exe'
$checksum64     = 'eeb384a36b9d1e5b5676f5b7c9692d204b95f7a8f0b2775f98aa97b2f50ad2c4'

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
