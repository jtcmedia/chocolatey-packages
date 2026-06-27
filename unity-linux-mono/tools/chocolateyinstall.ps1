$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/bec83302551e/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.0b1.exe'
$checksum64     = 'ef0aaa96ae16fed602924d0aa6eafcc8df89f33de47bf4e1853433307425fc7a'

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
