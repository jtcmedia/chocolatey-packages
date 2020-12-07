$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f483ad6465d6/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.1.16f1.exe'
$checksum64     = 'f4f813a738a84fae60c2be1daaa5071b0aa27329b1c6b590ca7fb79e4124310c'

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
