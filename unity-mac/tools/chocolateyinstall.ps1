$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/921b45a28ab6/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.2.9f1.exe'
$checksum64     = '30bb24d838b2122c22cc292eff977ff8817e8106347d6b449c44fd41147fc5e0'

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
