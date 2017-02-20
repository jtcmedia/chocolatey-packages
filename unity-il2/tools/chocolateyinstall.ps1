$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-UWP-IL2CPP-Support-for-Editor-5.5.1f1.exe'
$checksum       = '54752213d70a447a753b5c50b5ce4ade82b2a04b0600302010973fadea863b9e'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
