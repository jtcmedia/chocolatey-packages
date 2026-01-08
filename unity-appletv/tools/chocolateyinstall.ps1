$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a18e2220bd50/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.65f1.exe'
$checksum64     = 'f947ef4515a494246ce04695e4349ef4a53c345c22fb22e866dd5ad2a3981818'

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
