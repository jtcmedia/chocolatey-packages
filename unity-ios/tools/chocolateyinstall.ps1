$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e7adf66625be/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.66f1.exe'
$checksum64     = '289e3097d537a2c0039ac83eeca52abae705409095d1a0709c29775b74a58b2c'

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
