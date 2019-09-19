$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fe82a0e88406/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.2.6f1.exe'
$checksum64     = 'ca04502642624106a01b19e95a9d33530b36ec6b2ddac91b11ea01ddcf4d95b1'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
