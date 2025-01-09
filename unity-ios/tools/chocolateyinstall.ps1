$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/433b0a79340b/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.33f1.exe'
$checksum64     = 'abde6ceaac47526c366ff270a01dbdcb98b89c7b275391847d208266dbc6e15d'

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
