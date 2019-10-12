$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ebce4d76e6e8/WindowsDocumentationInstaller/UnityDocumentationSetup-2019.2.9f1.exe'
$checksum64     = 'acc50202955b891b1c68ff6f94fc29deee4fe5977635935a7f5a0bb58ecf4262'

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
