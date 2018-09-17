$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/ae1180820377/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.2.8f1.exe'
$checksum64     = '434691ada1768e4709557d4d80b64d85e1a8e99c96ab47057ae50dc8b5d41a00'

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
