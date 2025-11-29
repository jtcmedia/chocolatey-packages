$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9438f9b77a46/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.63f1.exe'
$checksum64     = '52d05c9cc99a50857f541e9745c0ef480617031e7e3513c9a98f2cb67739844f'

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
