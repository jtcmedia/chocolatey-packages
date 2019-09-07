$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c63b2af89a85/WindowsDocumentationInstaller/UnityDocumentationSetup-2019.2.4f1.exe'
$checksum64     = '5532487cee19505a8d368a23278ae3b19220cd4a62418ec2c409dcdf5afd4c26'

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
