$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/9dace1eed4cc/WindowsDocumentationInstaller/UnityDocumentationSetup-2019.2.5f1.exe'
$checksum64     = 'ebe578f378f5a1025ee992aec52177d525e8542a371c6c501a0cac956bd4e329'

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
