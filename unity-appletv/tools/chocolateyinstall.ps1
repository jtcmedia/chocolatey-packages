$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b58023a2b463/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.3.15f1.exe'
$checksum64     = '8c97c7f13c16a63ac37bdb8fd792dfb0fb5d9ab28ec9e906a1efbdd3bf0fab46'

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
