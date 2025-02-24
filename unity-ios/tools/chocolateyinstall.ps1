$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/56df1dd3b76d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.0a4.exe'
$checksum64     = '431c3aed75f42779f39740577014a4bd35443078db107e004ef4fd2dc867a109'

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
