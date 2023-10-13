$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d00248457e15/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.3.11f1.exe'
$checksum64     = 'dc299799ed1ff6231996d50b441d047e3984110e733d069f6f4a7dbbe5a70fe3'

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
