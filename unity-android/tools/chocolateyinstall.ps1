$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/c18cef34cbcd/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.2.2f1.exe'
$checksum64     = 'd3e8844a9ca10648106fd7e3a1ca49f8a34509f9f435a733e39875ea011341a1'

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
