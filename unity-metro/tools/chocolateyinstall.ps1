$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/472613c02cf7/TargetSupportInstaller/UnitySetup-Metro-Support-for-Editor-2017.1.0f3.exe'
$checksum64     = '44a8cd4aae80f36f93eec7bba60f8201f4f75d562fc349c4de349d6b9c0d595e'

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
