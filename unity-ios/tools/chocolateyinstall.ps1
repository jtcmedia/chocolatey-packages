$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0e0577a1a2ac/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.5.6f1.exe'
$checksum64     = 'b31017b2adc25e652c9c53dca1c0bd3b246fa777ad26956867cc5ee6d690da23'

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
