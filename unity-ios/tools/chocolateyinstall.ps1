$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b58023a2b463/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.15f1.exe'
$checksum64     = '8ae4a4e327464dfb6c8351511e41cb3bd935c9550deee70fbe58d63029e1c60e'

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
