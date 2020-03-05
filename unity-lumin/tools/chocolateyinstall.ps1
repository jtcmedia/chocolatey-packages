$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/7ceaae5f7503/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.3.3f1.exe'
$checksum64     = '51594621f5fc8c121a46eabfc0ca145c4521edee9938853f0ba7e26b6942129e'

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
