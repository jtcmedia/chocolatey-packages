$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/292b93d75a2c/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2019.1.0f2.exe'
$checksum64     = '0e79584310f8a88fcf872e4ca4334740dfffc984e2398b37200032c585abe7ba'

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
