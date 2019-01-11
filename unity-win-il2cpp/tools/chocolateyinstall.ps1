$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/bb579dc42f1d/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.3.1f1.exe'
$checksum64     = '36a3047b8e89938ead9fe194f9bd266fe70f0b6bd59ce9fbf4b147943939daa6'

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
