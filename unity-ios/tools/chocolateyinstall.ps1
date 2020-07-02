$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/20b4642a3455/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.4.2f1.exe'
$checksum64     = 'f0f2491650f0c39ba260ad2639106e35458be7317478956a15c61e05fe15c299'

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
