$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1a9968d9f99c/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.2.1f1.exe'
$checksum64     = 'e37adb998dc36648fde2d23bf6491f5a1da14f64a5b91d45678c3078ea1e42a8'

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
