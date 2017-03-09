$ErrorActionPreference = 'Stop';

$packageName        = 'unity'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32              = 'https://beta.unity3d.com/download/a13db154d9f7/Windows32EditorInstaller/UnitySetup32-5.6.0b11.exe'
$url64              = 'https://beta.unity3d.com/download/a13db154d9f7/Windows64EditorInstaller/UnitySetup64-5.6.0b11.exe'
$checksum32         = '53083d6527e8cc7cfac4d8d0188b1423c1667a7be28ccaf205df7cbd3aa783cf'
$checksum64         = 'b8f65ced14b8bf9a818154352dd0efa4a01cd7a2eff8f4d8da81b578ea68c2af'


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
