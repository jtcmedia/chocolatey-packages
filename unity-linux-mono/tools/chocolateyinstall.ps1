$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5ebc6493a86f/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.2.18f1.exe'
$checksum64     = '58eb5b7c032000e690a2e33bc4b419eb7e5dab9758ac340ffbb659e274bb7431'

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
