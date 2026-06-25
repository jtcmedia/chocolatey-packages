$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0d9463e84828/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.5.1f1.exe'
$checksum64     = '15c1f3a1b82265e55398724dc9e3da0453fdbe18e812434d35b7b600590537c0'

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
