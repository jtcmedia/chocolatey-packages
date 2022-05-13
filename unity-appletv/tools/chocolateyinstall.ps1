$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/369b620af41c/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2022.1.0f1.exe'
$checksum64     = '1971b082cd8bcd0233de1926645fda6811ba44fd0a2d7e10fadfb6291388be6b'

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
