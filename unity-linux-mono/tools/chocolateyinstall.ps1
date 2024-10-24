$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9f9d16c45e54/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.3.51f1.exe'
$checksum64     = '3cc86b3a0400230e20201f29581bdad3b7a558c7ed1cb2db25f3018a644bb6f7'

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
