$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/20b4642a3455/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.4.2f1.exe'
$checksum64     = '34153521c37f80b533adec80ea6add545e8ee4b7fa134744fdbe6631e0bc2ce7'

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
