$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/8e603399ca02/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.2.17f1.exe'
$checksum64     = 'a32d2ceda308a6d2bc841fa9907ef0b16c84472ce73368d45460871b3b230503'

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
