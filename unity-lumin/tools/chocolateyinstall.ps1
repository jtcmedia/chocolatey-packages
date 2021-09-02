$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5f5eb8bbdc25/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.19f1.exe'
$checksum64     = '06076e34cb5397b80650065ebb8a141e8f93a7968c6f8aa6686bfb5f7d5e5db5'

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
