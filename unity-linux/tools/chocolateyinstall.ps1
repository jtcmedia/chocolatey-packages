$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b15f561b2cef/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.1.10f1.exe'
$checksum64     = 'd28f174f52cdbc286ca72dfd83c4d2ebf94b13ad658fbe9311af3f0feb57773c'

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
