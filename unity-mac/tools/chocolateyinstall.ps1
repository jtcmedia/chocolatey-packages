$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6f1140cf2297/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.1.5f1.exe'
$checksum64     = '938b164cbc9a95ffb3982c0665bc506a505d1b4aed9a0a6d89f03a2153936cba'

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
