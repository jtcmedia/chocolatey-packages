$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/becced5a802b/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.2.4f1.exe'
$checksum64     = 'f6a1a281fa8e55265d3dc7d24192dc789553b32f05d00a372b9b4601ba0a59b1'

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
