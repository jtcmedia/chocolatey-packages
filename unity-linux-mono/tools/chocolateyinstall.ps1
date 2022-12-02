$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e8e88683f834/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.15f1.exe'
$checksum64     = 'ff8fa5e03310223b0937d2033371266ca855d18b82151f5e83bc5b4b2e6a033b'

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
