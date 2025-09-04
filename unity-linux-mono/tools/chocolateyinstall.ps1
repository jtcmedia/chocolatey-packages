$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b7b9860b7bbd/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.57f1.exe'
$checksum64     = '2431d30c8de9e8c19582a793c52b3a6e445542f5bda0bc47dd2e13176edff7a3'

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
