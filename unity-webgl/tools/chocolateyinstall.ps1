$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ab112815d860/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.2.2f1.exe'
$checksum64     = '65fd5a99af792125e32fabee994e347cd2dffa20eb4c812733267cfcb1610cba'

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
