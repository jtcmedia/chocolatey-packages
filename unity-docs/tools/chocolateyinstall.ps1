$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e0c4e791ab71/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = 'cc595d3c78359c832cd0456a3bdd18ab3fe8d8a5ba7c21f182002c719f0a8b60'

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
