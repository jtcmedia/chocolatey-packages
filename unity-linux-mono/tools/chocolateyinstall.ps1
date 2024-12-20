$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b2e806cf271c/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.32f1.exe'
$checksum64     = '28e1b9245e7f37c7e5a17151e21596e8b727344bcf21bc5d06ecb17eda282faf'

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
