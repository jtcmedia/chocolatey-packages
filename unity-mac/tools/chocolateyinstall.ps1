$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/9231f953d9d3/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-2017.4.1f1.exe'
$checksum64     = '67cef196e869012653d8ab3dcf8e7666cf77110231ed83c0e6e186399d82ab24'

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
