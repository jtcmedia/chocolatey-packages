$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4e7b9b5b6244/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.3.24f1.exe'
$checksum64     = '01fd74c6b572bebea475a91fc7ac0e84487d14dce2fb8e7c90539e852f3a6136'

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
