$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/56df1dd3b76d/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.0a4.exe'
$checksum64     = '6aba975f244cbda7fbc0f08e6678062a5f8f2444bd862ef20c88ecbd41e089de'

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
