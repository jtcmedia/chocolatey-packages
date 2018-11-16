$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/39a4ac3d51f6/WindowsDocumentationInstaller/UnityDocumentationSetup-2018.2.16f1.exe'
$checksum64     = '3ae8cd09b16237393e2e10d23721b0fa8826d18f599ba9676c17b328b9bdba75'

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
