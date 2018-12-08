$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/06990f28ba00/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.2.19f1.exe'
$checksum64     = '371753309fb2337df0ac7d077d8dec64ff1f5bb7c19ac34817f64ab32e0e8e28'

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
