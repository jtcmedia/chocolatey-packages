$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/19eeb3b320af/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.2.12f1.exe'
$checksum64     = 'ac6ed153bea5ce83caa70a1368258138a90ab0878c7ea5cf5dc334aa7285a3a5'

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
