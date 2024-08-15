$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2dcb6a0abc42/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.42f1.exe'
$checksum64     = '8a60d613f523051464fee086cfb1899990b06561544dc8884c19fc8fb7c0e87d'

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
