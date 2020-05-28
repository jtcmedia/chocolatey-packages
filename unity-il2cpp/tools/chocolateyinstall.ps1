$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/59ff3e03856d/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.3.15f1.exe'
$checksum64     = '473649cf3eaf3b4d8c40d2765f8038aa3261acb4ae1580a4c294b402166a5ac4'

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
