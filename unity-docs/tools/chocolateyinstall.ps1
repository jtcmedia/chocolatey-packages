$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/a53ad04f7c7f/WindowsDocumentationInstaller/UnityDocumentationSetup-2018.1.3f1.exe'
$checksum64     = 'effa1765e1e7a849acb53364549aa2e476e44afd14239b9879d9d3c234e7d875'

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
