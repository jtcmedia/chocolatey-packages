$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/83fbdcd35118/WindowsDocumentationInstaller/UnityDocumentationSetup-2018.2.13f1.exe'
$checksum64     = 'd6fa785f6fd227e5c4ea7dfe6ab2b52d2042d3e9787614cc200c74d7c22ae240'

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
