$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c53830e277f1/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.2.7f1.exe'
$checksum64     = 'd13101df926dab5135bedbe57a11f4c6494f2110a86fd2ec6816a85645807e73'

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
