$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e767a7370072/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.1.15f1.exe'
$checksum64     = 'b3a75b4662ab8409186a64d4f34e3796df370f3a796c1cbf1f459d6ad0354298'

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
