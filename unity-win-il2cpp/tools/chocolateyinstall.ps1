$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f483ad6465d6/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.1.16f1.exe'
$checksum64     = 'bbb5dd7d458b23cb584a807af9801ff74caca0635012a242b3748aa009e6dbde'

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
