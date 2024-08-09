$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e12ab2d6a089/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.14f1.exe'
$checksum64     = '4ce4993ed12fb8eb66fd025549c0a7a6829d8bf651a211113c8f2830278508be'

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
