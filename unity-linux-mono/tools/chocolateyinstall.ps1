$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/577897200b8b/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.20f1.exe'
$checksum64     = '26b9becc99e5a495ce147686fdc024ce7db90005dfc28e0da70d142f98c96a60'

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
