$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5fa502fca597/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.1.16f1.exe'
$checksum64     = '0dda9127d5563d8daccd5d1ba9bfa621a1f28e7e63f2fe476e591c95ff259f3a'

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
