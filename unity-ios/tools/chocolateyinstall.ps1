$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a2913c821e27/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-5.6.2f1.exe'
$checksum64     = '867d64020844de04951b7c12d5af5b08912cb7ce6c7799dcf11b00592a64acb5'

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
