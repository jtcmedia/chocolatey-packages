$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8f5fde82e2dc/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.3.38f1.exe'
$checksum64     = 'db22560295b410f93b602890a135eb662d5d28ee6a78cfa59cd671027948d5cf'

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
