$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f2d5d3c59f8c/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.1.21f1.exe'
$checksum64     = '12bc718123262df134fa489aa5dd28113653e0923e9bea5c7b0c777db6e05a17'

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
