$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/55531d7fa82e/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.2.3f1.exe'
$checksum64     = '5bc17e81a219d9459bc133367be02cbb038385782bb92d01170336fec974dc7c'

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
