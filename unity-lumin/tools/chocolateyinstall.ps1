$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a03098edbbe0/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.13f1.exe'
$checksum64     = 'ae7d0671cb5b46fb6fcf1910b81a71c34a4e965cb2dc33bca5a20e48934480af'

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
