$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2ad1ed33fd3b/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.47f1.exe'
$checksum64     = 'b3a2d8e8cd72d6fbb911bd093685b0c0747784262dc0ddeb43aa9e1e723c7ff4'

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
