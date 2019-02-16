$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a220877bc173/TargetSupportInstaller/UnitySetup-UWP-IL2CPP-Support-for-Editor-2018.3.6f1.exe'
$checksum64     = '3ac4e89f930fbe689d9bbae9072416976bce71d75a7937c92c374a0b5b4a0e2f'

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
