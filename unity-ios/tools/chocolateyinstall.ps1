$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6f7f9e1c9e8a/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.76f1.exe'
$checksum64     = 'ca406fb4245b255bd7e2e7884e5977c63f816641233e4528306527adc15f542e'

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
