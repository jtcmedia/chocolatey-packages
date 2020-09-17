$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fc477ca6df10/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.1.6f1.exe'
$checksum64     = '84f8a402aa3866b1a5c9ccdc3d4ab4ef5274992fbf89a4dc0e5e29b0ad778398'

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
