$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/20b4642a3455/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.4.2f1.exe'
$checksum64     = '4ad0b5b2fd2c7384e63a26e93b681c27ede189d58b23c555f5e2ee4a6d27a651'

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
