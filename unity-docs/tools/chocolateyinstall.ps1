$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/59ff3e03856d/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = 'edd11e7731c7e231b8b4ea49d09ddee8b470e24ec4ef4d24cbcbc6dab2c64785'

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
