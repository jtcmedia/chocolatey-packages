$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/ceef2d848e70/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.3.11f1.exe'
$checksum64     = '123f924e1683de851e5196a8ca48b66a81444cf46fe4bb4c8c00beb84d66e0b3'

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
