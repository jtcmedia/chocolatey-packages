$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/698c1113cef0/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.1.11f1.exe'
$checksum64     = '1b8bc10726d6826b819965d90fdaa0dff63cdeac85eedfebd52b54924009da8a'

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
