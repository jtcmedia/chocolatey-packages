$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/35dcd44975df/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.2.0f1.exe'
$checksum64     = '2f179cf4df93a027ae178e8bcbd2d4db06772e3521d9bc3a496f8269374ffc1e'

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
