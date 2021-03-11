$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c7b5465681fb/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.3.0f1.exe'
$checksum64     = 'cd361d7b3e2299280e0a8b17dc5e62622e53503c6ec990561c0208fc537f56ed'

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
