$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/240d06e2411b/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.0a7.exe'
$checksum64     = 'c31094d126a0f297a661138c42eaed5506753a718db84ca2346b04ecb011bc49'

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
