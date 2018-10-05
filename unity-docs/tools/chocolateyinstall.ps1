$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/38bd7dec5000/WindowsDocumentationInstaller/UnityDocumentationSetup-2018.2.11f1.exe'
$checksum64     = '20991c9f7953f049cda82238c1c61f34d08284db1d289d64183e0c4cb47a3a15'

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
