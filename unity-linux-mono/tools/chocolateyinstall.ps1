$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b22767f04f04/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.7f1.exe'
$checksum64     = '9c36c0c57f6ec7d6b4d47296198535a74d3af426b606c4af9141c3cfad6f061c'

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
