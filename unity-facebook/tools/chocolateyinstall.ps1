$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/20c1667945cf/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.2.0f1.exe'
$checksum64     = '1e1e1421d4ad96683bc0e80f19c61e952e0ad0888a2547b818ea470c1b048cac'

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
