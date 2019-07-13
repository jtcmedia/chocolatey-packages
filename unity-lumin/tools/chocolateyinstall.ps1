$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f007ed779b7a/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.1.10f1.exe'
$checksum64     = '2583c49876bc44d773395a813705b631b9a90f7419f19dd501358fa7e4d78619'

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
