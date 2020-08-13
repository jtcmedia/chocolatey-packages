$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7b32bc54ba47/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.1.2f1.exe'
$checksum64     = 'e4d3fe3dc776274fd2fd9f338c4bd6172eab534464790f27708b4aeedaa4f8f0'

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
