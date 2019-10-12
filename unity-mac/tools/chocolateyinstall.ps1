$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ebce4d76e6e8/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.2.9f1.exe'
$checksum64     = '39ad01dd54568fdec6831e243f648231fd40e5723e782132c81125853667c71c'

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
