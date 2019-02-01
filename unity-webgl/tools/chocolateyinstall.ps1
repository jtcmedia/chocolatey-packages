$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1d952368ca3a/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.3.4f1.exe'
$checksum64     = '2029aa35149625337004957ecf374a3355f9ca8fcc140dd6172dbae50564f838'

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
