$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4550892b6062/TargetSupportInstaller/UnitySetup-UWP-IL2CPP-Support-for-Editor-2018.2.18f1.exe'
$checksum64     = 'b8117d143bfb25327299ef0637d1952535a1b503780e93cc78a2b667fb839629'

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
