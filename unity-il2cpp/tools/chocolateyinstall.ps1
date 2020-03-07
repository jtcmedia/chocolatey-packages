$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4f139db2fdbd/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.3.4f1.exe'
$checksum64     = '1c7053250abba56fb9eca69f9b4edbdca4f697c5c2844fc451aeb83067141d49'

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
