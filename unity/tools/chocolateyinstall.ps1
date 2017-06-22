$ErrorActionPreference = 'Stop';

$packageName        = 'unity'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32              = 'https://download.unity3d.com/download_unity/a2913c821e27/Windows32EditorInstaller/UnitySetup32-5.6.2f1.exe'
$url64              = 'https://download.unity3d.com/download_unity/a2913c821e27/Windows64EditorInstaller/UnitySetup64-5.6.2f1.exe'
$checksum32         = '13eb7fc65455c21f93c0d8cf3712da3c5ba7cdba6f3bb6f033fafdb22f472de0'
$checksum64         = '7090fa9d8b7ecb1dc5eade2e514ffb64cc8e5c732c28ae7140602b39ea7f3ade'


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
