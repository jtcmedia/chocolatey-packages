$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8c66806a0c04/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.3.37f1.exe'
$checksum64     = '60533b6fab3eba4eef92c691b24dec0410bd9b50eb4382b41989484634168e88'

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
