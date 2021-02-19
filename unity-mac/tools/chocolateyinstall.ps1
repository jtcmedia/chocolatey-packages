$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e2c53f129de5/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.2.5f1.exe'
$checksum64     = '8f260cae50e4fc3e6226105892914c72a172b7acca3f46f6adf398203ca6b5a1'

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
