$ErrorActionPreference = 'Stop';

$packageName    = 'unity-tizen'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-Tizen-Support-for-Editor-5.5.1f1.exe'
$checksum       = 'b3a067d99813f9f18e9d6062dd29f651c64fe8e70b04f7ea1dea5d04bc5918c7'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
