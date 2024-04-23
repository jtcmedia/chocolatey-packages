$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/95c298372b1e/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.2.19f1.exe'
$checksum64     = '69e10b4210eb995d85672699d41817a00cf494a2e18fcb64302c4a46e81bdb39'

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
