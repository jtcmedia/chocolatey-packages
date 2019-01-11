$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/bb579dc42f1d/WindowsDocumentationInstaller/UnityDocumentationSetup-2018.3.1f1.exe'
$checksum64     = '26d9084f382579f40ef1c518b8ef3c1fc4fecb89a4d1bcc53c0857b6888a1870'

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
