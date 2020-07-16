$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1f1dac67805b/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2019.4.4f1.exe'
$checksum64     = 'f9df168a25773799377bd5a5db8cd9091d42802c94b41280c6b9900b80203da7'

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
