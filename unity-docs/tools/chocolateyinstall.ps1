$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/24e8595d6d43/WindowsDocumentationInstaller/UnityDocumentationSetup.exe'
$checksum64     = '179e89c89a16b7eb330ad6b1bd2a1c1e35f3d3149cfbe59e451ffbc9b89d4139'

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
