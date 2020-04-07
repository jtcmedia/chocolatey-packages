$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4ba98e9386ed/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2019.3.8f1.exe'
$checksum64     = '61bd8326c85c44c7b36bb7e0b1440b971da2fb00c17779b40a7fb2af29f0939f'

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
