$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4e1b0f82c39a/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.3.39f1.exe'
$checksum64     = '567f25f54369e066763fb19dfb453cf2aa7099e576db6bf90534e28a6bb554dd'

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
