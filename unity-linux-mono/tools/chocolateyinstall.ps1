$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9636b062134a/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.1.23f1.exe'
$checksum64     = 'd87bd849a44ef02cef21d277b6131dce8b16755feef9fc41b60c0d49967ebe39'

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
