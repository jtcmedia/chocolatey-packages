$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/302b264628f9/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '0a9ebbe3d8ad38b36b8d85fca40f954a68b0853a8dcc9bc18ed4b92b413bc1db'

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
