$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2285c3239188/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.1.1f1.exe'
$checksum64     = '62e1bc831c7d7af92966bb378f6793e602ec1f694775aaf5b69cbbb55c0f3025'

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
