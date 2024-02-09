$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/157b46ce122a/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '6f1e7a8f70ada4b4e25a8f54bb6a5cb0a4bfa40ee2f194b9b47784c3195cbfad'

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
