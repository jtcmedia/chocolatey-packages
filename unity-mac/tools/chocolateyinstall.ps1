$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/947e1ea5aa8d/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.3.9f1.exe'
$checksum64     = 'b616b4f9d4e912b149446fd37e32561f823d7f16f58f5db388b0bcf7f25acfaa'

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
