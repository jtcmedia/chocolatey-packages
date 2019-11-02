$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5f859a4cfee5/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.2.11f1.exe'
$checksum64     = '0ada69eefdd6645b3a0cb9b8a297d2ee0916b90951323c3056c8a8f37d4bd546'

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
