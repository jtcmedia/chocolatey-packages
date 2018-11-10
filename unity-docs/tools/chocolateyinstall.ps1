$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/65e0713a5949/WindowsDocumentationInstaller/UnityDocumentationSetup-2018.2.15f1.exe'
$checksum64     = 'b1e7770fa5f1b0106204e88a23b1da2916bdb4117239a67a4deca8c21da4eade'

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
