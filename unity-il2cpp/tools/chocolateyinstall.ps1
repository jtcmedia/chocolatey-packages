$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8afd630d1f5b/TargetSupportInstaller/UnitySetup-UWP-IL2CPP-Support-for-Editor-2018.3.12f1.exe'
$checksum64     = '555553122647554b165a88225659d5a40b689780a0550d3f844f108e263380e2'

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
