$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b1a7e1fb4fa5/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.2.12f1.exe'
$checksum64     = '0de9b9be5e4e4397090f1379476687128828ed1356db3a3b2c0317c750f088ef'

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
