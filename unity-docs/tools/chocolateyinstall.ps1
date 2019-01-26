$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/393bae82dbb8/WindowsDocumentationInstaller/UnityDocumentationSetup-2018.3.3f1.exe'
$checksum64     = '4a99d53c994d216042fe9dd9bb6db62e6406bcf10942a3c52dafd1784c0bf97f'

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
