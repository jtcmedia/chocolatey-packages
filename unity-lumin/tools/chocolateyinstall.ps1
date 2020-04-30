$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/84b23722532d/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.3.12f1.exe'
$checksum64     = '03b097e3b6cdcf4d1e0d85ec4c04be2fc93db9316b0dbe91fe92e8af6212648a'

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
