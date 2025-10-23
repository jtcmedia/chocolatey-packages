$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e0c4e791ab71/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.2.9f1.exe'
$checksum64     = 'c70f9a355b276ae1fc3ca368b86a0dfdc7297a988592dc1e328f779f89e3b4d5'

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
