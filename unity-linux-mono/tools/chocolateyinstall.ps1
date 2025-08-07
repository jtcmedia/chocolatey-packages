$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/faa32412f6c9/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.1.15f1.exe'
$checksum64     = '1b8ca3aaa2926a44e5ae18823406a79918e824ec798c2ee3e13ab8c3450241f6'

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
