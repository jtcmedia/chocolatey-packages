$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/be552157821d/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.20f1.exe'
$checksum64     = '3e1d19273c4bff3ff3d7c549fa45afd7e93ad158fb11456bcae1cb8118a14440'

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
