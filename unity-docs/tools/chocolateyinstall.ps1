$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/76b3e37670a4/WindowsDocumentationInstaller/UnityDocumentationSetup-2018.3.5f1.exe'
$checksum64     = 'aa2f9582146f5624b13b6d103562feb25e3ac5ed61de335bee0d4b803e142c55'

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
