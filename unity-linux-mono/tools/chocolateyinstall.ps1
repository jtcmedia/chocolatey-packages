$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c1f81ff5b082/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.5.0b1.exe'
$checksum64     = '2b8c712a9d8fb4efa6dcd608ad64cec8f74d42d8656d639f5112b7adcd0cce36'

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
