$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/64de5ee36373/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.6.0a2.exe'
$checksum64     = 'bffee0b969570f7ea6603807f8825980b363436893cfba436d4071dcbc8d618c'

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
