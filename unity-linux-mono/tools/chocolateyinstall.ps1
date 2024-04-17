$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/1cb755715f58/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.18f1.exe'
$checksum64     = '66726b4c171e6e8de74774ed5113e1129e335584691ba050109885cad3849dea'

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
