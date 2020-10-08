$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/22e8c0b0c3ec/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.1.8f1.exe'
$checksum64     = 'f4c64fdc3bc84922e774269a0f21c94712c8bafb87ba229edf97a945892a211f'

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
