$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/77a89f25062f/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.3.1f1.exe'
$checksum64     = 'cc484e31dca690c4ada44d381fd509c0a8f80ab14679ebbd6ebadc7228b2bc51'

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
