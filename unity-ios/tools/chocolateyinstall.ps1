$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1c4764c07fb4/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.23f1.exe'
$checksum64     = 'eb69dd3cf77d10075b8f0c3ccbb3a4622e7bec737ca5dc3d6add0f70c1735c6a'

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
