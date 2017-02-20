$ErrorActionPreference = 'Stop';

$packageName        = 'unity'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32              = 'https://download.unity3d.com/download_unity/88d00a7498cd/Windows32EditorInstaller/UnitySetup32-5.5.1f1.exe'
$url64              = 'https://download.unity3d.com/download_unity/88d00a7498cd/Windows64EditorInstaller/UnitySetup64-5.5.1f1.exe'
$checksum32         = '74dde7aaa68e072c2348e078b040db03eee5d4b9f2b18b5e9b45c22a7a2a2f50'
$checksum64         = '345a8df2c66082f10d48ef3870b669235ef181825ec224595b0e013929d2bb1a'


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
