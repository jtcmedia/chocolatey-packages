$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/c591d9a97a0b/WindowsDocumentationInstaller/UnityDocumentationSetup-2018.2.6f1.exe'
$checksum64     = 'ec174512c6c04b72863154e7cc02944b2593773e5b8ee52fc7946a45ee2ae269'

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
