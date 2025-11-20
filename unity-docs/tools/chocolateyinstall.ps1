$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/abdb44fca7f7/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '81f8c19fd2d7dcb6d4a92fb63d7dff23f7cbf359c7b17c3860b9b5e2843f5fcf'

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
