$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4bf1ec4b23c9/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.2.0f1.exe'
$checksum64     = '669842ce2b6bc3788c424980f67ff94ec72b292d12245a46bc344f08701d905f'

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
