$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d91830b65d9b/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.1.7f1.exe'
$checksum64     = '0d8197d80d1e7b7ac6c5604dedc3e82566f2914a2521880cbc89578d6f3b5213'

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
