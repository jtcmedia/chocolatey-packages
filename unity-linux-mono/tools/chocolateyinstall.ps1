$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9a3bc604008a/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.35f1.exe'
$checksum64     = 'f13351b3e9284caf993d4fd119de37728c1430c6a60800a3a11df2c94d32fbfe'

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
