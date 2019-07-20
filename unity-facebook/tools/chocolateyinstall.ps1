$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9b001d489a54/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.1.11f1.exe'
$checksum64     = '2ced5a8f79f81b5f20636c0fbd4f34396bed1e54bc6518bf26988da2be0eb8fc'

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
