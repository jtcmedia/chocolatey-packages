$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/39a4ac3d51f6/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.2.16f1.exe'
$checksum64     = '361d58524ac9968f3171949a922f945d93c61cff43f509ccad5c494b3ca2255c'

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
