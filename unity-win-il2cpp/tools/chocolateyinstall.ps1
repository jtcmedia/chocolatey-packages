$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4cd64a618c1b/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.1.4f1.exe'
$checksum64     = '6af552ffc1830303e19d6b1010f1977b1743b359f6449ccd6e7c641e8551dd4b'

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
