$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9492f7722ddd/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.1.14f1.exe'
$checksum64     = '6d1cb501b21d3b26526dcb8486b01f9f820b4d52f11b297040b8f046d13bd9c2'

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
