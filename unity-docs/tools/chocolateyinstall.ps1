$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/cf6d2d083ec9/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = 'b4c3d673b16fe70c5dbc34f1c995a7c5fe5e7caf194cb9ee8808910bc05fec80'

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
