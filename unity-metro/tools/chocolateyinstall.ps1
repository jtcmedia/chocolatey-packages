$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b6f2b893ea32/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.1.25f1.exe'
$checksum64     = '2785bf10e18a48c14fe3d981de4458e31b0ecec74e12df8bf8fbd3a8d40b9b08'

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
