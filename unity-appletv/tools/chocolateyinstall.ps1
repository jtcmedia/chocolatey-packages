$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3699cf869f9b/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.18f1.exe'
$checksum64     = 'b48585293cb74cd415fc305e0508c7444a840a5a7998588d6b37347c8018b202'

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
