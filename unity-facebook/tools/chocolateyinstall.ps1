$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/49dd4e9fa428/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.2.14f1.exe'
$checksum64     = '18b1068e965aca43a62839c5cb96288501a00087c1bbfbb3fb92a27390971bc3'

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
