$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c96f78eb5904/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2019.2.7f2.exe'
$checksum64     = 'abcd645eb0640d0563856ab3ae4cc464fe357dc087171a1de4901421029aae90'

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
