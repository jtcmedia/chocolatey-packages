$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8af3c3e441b1/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = 'd3a16f880dbfd43d0b91fe0c2247430381bbf3a5ef18ffa6db55d1bc1fe8b8dc'

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
