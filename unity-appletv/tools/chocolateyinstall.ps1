$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cf7ddae6c717/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.6.0b3.exe'
$checksum64     = 'f389bac142ab74d574808316522b943a75ed89abbf698940f1100a62fbae9964'

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
