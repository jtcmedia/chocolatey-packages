$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ab112815d860/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.2.2f1.exe'
$checksum64     = 'b6bd5659d7e749a8a8c2356770390e02a0109e6688f87822ae9032c9317ac4ac'

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
