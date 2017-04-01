$ErrorActionPreference = 'Stop';

$packageName        = 'unity'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32              = 'https://download.unity3d.com/download_unity/497a0f351392/Windows32EditorInstaller/UnitySetup32-5.6.0f3.exe'
$url64              = 'https://download.unity3d.com/download_unity/497a0f351392/Windows64EditorInstaller/UnitySetup64-5.6.0f3.exe'
$checksum32         = '392351569908785b3b1e496b463ac4852826567e88307d29185b706dbe0937fa'
$checksum64         = '37c685d35d5326f02fdda12f6827f4b5465c126b74233c49303408c5937fa7b7'


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
