$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a9f86dcd79df/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-2017.3.0f3.exe'
$checksum64     = '751b6f719e02e282a57214ee6c50fe1af73518f513abe3b7184ad6f53e9f4248'

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
