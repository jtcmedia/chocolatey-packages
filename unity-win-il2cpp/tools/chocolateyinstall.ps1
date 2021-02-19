$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e2c53f129de5/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.2.5f1.exe'
$checksum64     = 'b0f4bf04b16b917aa3a47294bb72fb4cf10923b565e7fc523d8c8632219cac03'

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
