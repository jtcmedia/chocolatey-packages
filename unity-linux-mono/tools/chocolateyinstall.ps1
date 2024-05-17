$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c36be92430b9/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.2f1.exe'
$checksum64     = '65fa11438c77b98e21aaa3ef3c689724f5318ae84b9208fc69306a154d1f1e35'

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
