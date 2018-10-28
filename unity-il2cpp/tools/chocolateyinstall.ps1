$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3262fb3b0716/TargetSupportInstaller/UnitySetup-UWP-IL2CPP-Support-for-Editor-2018.2.14f1.exe'
$checksum64     = '8f4bed05a439dc625091bb008d1f788050ec8a459cbf80be29c09a842e4add87'

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
