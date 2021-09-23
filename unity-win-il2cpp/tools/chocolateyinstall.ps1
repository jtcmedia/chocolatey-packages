$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a137e5fb0427/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.1.22f1.exe'
$checksum64     = '7caf1c5e9c3a14743c08c076d14954720a7af31e1b7ff13ba43a81b49fbd20ca'

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
