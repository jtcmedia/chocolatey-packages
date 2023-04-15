$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/30d813e1a2a9/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '0a279b29a58cbc6d6ccd1f0c0563033ee308a0446ff7faf2a5f58b2f3489aecd'

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
