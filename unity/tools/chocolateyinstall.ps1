$ErrorActionPreference = 'Stop';

$packageName        = 'unity'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'https://beta.unity3d.com/download/472613c02cf7/Windows64EditorInstaller/UnitySetup64-2017.1.0f3.exe'
$checksum64         = 'f5b61edb7b1f434d52726b4a0601a883a601db500aff9b5a56b28068be1f7bbc'


$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  softwareName   = 'Unity'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
