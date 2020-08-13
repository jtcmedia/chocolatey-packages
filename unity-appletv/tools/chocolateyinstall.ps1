$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7b32bc54ba47/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2020.1.2f1.exe'
$checksum64     = '6be037abea897995bf3415911280acf7a026bb425fda2ec000f381810bd6d43a'

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
