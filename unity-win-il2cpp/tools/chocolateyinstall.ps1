$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/be552157821d/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.1.20f1.exe'
$checksum64     = 'ba737c5a5e7885d88b5820703fa8b7f18a335b8ebc5cd94e87f2e3cc0e5df827'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
