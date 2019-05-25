$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ffa3a7a2dd7d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.1.4f1.exe'
$checksum64     = '21b7c31a108b29e2a02b0822668bded97912fef74092f9f6952fc31ae4f2dfa9'

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
