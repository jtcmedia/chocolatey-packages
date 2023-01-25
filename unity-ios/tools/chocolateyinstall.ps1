$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/55531d7fa82e/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.2.3f1.exe'
$checksum64     = '59a6b227d36980211a8b13e62a72c701848ff953ac8008f22d7652c79a229870'

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
