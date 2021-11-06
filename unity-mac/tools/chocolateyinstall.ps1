$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c20c6d589440/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.2.1f1.exe'
$checksum64     = '58b037450cea8e46a555a56f5216b50dbd5e87282d80bc6067d7ac6fb7c14727'

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
