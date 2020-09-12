$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e025938fdedc/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.1.5f1.exe'
$checksum64     = '0f8ec52402de3027305af6c3fb65ad67de50e67c53dc07760aeb2e2b06428120'

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
