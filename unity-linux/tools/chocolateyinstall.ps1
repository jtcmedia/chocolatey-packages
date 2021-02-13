$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/becced5a802b/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.2.4f1.exe'
$checksum64     = 'ce0bd835f23e01bc1f361b3eadbc51eb6edf6f8039743454402d6375ee53934c'

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
