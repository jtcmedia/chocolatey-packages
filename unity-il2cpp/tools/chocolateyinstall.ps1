$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fc477ca6df10/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.1.6f1.exe'
$checksum64     = '71923209ccfb00547a1081564de0e4a3c946c8f831629e6f54a07df162817b4a'

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
