$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4ff56b3ea44c/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.0f1.exe'
$checksum64     = '825a4d25439d2f8939a7e10c32dd40afa9b7d5df9be31232bbaf35881db8cbd9'

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
