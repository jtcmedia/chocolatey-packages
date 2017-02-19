$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32          = 'http://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-Metro-Support-for-Editor-5.5.1f1.exe'
$checksum32     = '93d34700e4cabb5ec81aeaaebacb65ad74ce8631267fcd1ceb6774f38cc3be8c'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url32
  checksum       = $checksum32
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
