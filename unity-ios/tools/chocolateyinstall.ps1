$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9636b062134a/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.1.23f1.exe'
$checksum64     = 'b9d2e3670c4a0d75ce342c9f415b377afcdb446fe9dc018dd9aaa695605ba31b'

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
