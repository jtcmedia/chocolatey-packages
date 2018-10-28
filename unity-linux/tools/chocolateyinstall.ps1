$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3262fb3b0716/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.2.14f1.exe'
$checksum64     = 'e92fe110153d1b05479350bafe1bef1a58445e81e0e68457e940d4b58da6b0ba'

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
