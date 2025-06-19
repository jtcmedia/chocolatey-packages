$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/439913089442/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.0b6.exe'
$checksum64     = '81b56a6a34ec8dd638857c80b66e0c2c61fc0cc6a5526c6847314b221ac5387b'

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
