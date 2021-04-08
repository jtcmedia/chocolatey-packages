$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e5d502d80fbb/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.1.2f1.exe'
$checksum64     = '0220b03843e1b31bcf52376c2f5bbadd09efb59c561024c06c787c4832e9cd81'

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
