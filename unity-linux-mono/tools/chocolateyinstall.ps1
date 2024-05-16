$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d9cf669c6271/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.1f1.exe'
$checksum64     = 'c75039c4ecba2891ba918ea925051bd1ee7235900bcd494f0c451a188014f931'

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
