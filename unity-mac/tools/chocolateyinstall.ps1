$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2285c3239188/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.1.1f1.exe'
$checksum64     = 'c82a99919216db766377d75c5336b3c75102587e68a5677e7891f740ccdd6bcd'

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
