$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c20c6d589440/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.2.1f1.exe'
$checksum64     = '55874ab57dfc934a65c3c59715e1a27fb25b41e49b0b17e0087173753cb2b68a'

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
