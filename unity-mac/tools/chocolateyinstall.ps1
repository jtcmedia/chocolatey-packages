$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/61a549675243/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.0f1.exe'
$checksum64     = 'fd184bd64cd21be525c07ab80ad3e82b6500ce97d66973913024cd1b0f936771'

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
