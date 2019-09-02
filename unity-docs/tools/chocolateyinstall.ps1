$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8e55c27a4621/WindowsDocumentationInstaller/UnityDocumentationSetup-2019.2.3f1.exe'
$checksum64     = '1689eb80ef9f0e0b2dd25397315ad58ca7a05b19f532346681659cba43edaf13'

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
