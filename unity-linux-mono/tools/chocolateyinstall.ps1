$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/57daeefc879b/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.6f1.exe'
$checksum64     = '74c89931dc8efa6a3fed12db4e7db98fdf53b8e4326035a6121c3d5a4afbc26f'

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
