$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3262fb3b0716/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.2.14f1.exe'
$checksum64     = 'e6016a7f340f6dbbc451b68d22c846951991a4dd45e7cd5344216b8b9c8eb43d'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
