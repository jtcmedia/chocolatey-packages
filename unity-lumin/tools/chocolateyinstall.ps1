$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f04f5427219e/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.1.12f1.exe'
$checksum64     = '47f3d272291462dc43c5dbc3e9f92c4a1b1386d96b89327edaf0b1041d40fc37'

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
