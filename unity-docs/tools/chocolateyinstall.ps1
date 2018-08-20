$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/cb262d9ddeaf/WindowsDocumentationInstaller/UnityDocumentationSetup-2018.2.4f1.exe'
$checksum64     = 'd620b970fb2bec4b22bfc095a70e2c3a4d1350cd5b48d88a610af5382f44226d'

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
