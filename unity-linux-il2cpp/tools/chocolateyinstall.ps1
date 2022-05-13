$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/369b620af41c/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.0f1.exe'
$checksum64     = '3b9c4c0f10eca8c76b921f70a3923ce43ae2f8c03c4c30b4c9ac0f030f0dc021'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
