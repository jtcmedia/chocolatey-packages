$ErrorActionPreference = 'Stop';

$packageName        = 'unity'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32              = 'https://download.unity3d.com/download_unity/3829d7f588f3/Windows32EditorInstaller/UnitySetup32-5.5.2f1.exe'
$url64              = 'https://download.unity3d.com/download_unity/3829d7f588f3/Windows64EditorInstaller/UnitySetup64-5.5.2f1.exe'
$checksum32         = 'c107352eec091399d3674c1b5c5c64d855f9aae81f62177435b84b2d9f2c196a'
$checksum64         = '742a30bbd55439d61616dafb7a80f30e7eee7b284ffc03d9f88fd38ac799ef2b'


$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url32
  url64bit       = $url64
  softwareName   = 'Unity'
  checksum       = $checksum32
  checksumType   = 'sha256'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
