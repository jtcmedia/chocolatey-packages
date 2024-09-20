$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/05208a74e9aa/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.20f1.exe'
$checksum64     = 'e09bccbfe6abe3ddb2b5df6fe50efbc4246121f150bb89177dce2f3c59bbc468'

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
