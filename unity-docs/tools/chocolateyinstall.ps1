$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/8e603399ca02/WindowsDocumentationInstaller/UnityDocumentationSetup-2019.2.17f1.exe'
$checksum64     = '01a9149511b29c35c130b0945e1be0f42415eb8f593e2f67628ca7cec2b660d5'

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
