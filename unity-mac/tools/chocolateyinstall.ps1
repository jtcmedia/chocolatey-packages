$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ab112815d860/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.2.2f1.exe'
$checksum64     = 'cd14dac0919e3a0df74c99720ed988895e88790ae89fe33d4efcae3798d58615'

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
